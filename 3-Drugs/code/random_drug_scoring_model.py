# This file holds the code for producing and storing the code to
# handle the drug names lsit
# uses drug names matching codes
# estimate the meand nd std of the score under random permutations.


# libraries
from code_for_drugnames_matching import read_file, findmatchingsecondlist, init_findmatchingsecondlist, dump_findmatchingsecondlist
from generic_util import printmap, printlist
from file_handling_util import testexistencedirectory, testexistencefile
from file_parsing import stringnormalize2

# number to alpha ratio

def number_ratio(s) :
    numbers = sum(c.isdigit() for c in s)
    letters = sum(c.isalpha() for c in s)
    spaces  = sum(c.isspace() for c in s)
    others  = len(s) - numbers - letters - spaces
    return  letters - numbers



# meta data

#drugfilelocationmap = {}


#drugfilelocationmap['GEO'] = '../All-drugs-names/DrugGEO_drugs_namesonly.txt'
#drugfilelocationmap['DM'] = '../All-drugs-names/DrugMatrix_drugs_namesonly.txt'
#drugfilelocationmap['CMAP'] = '../All-drugs-names/CMAP_drugs_namesonly.txt'
#drugfilelocationmap['L1000'] = '../All-drugs-names/L1000_drugs_namesonly.txt'


def upload_drug_lists(drugfilelocationmap) :

    outmap = {}
    for x in drugfilelocationmap.keys() :
        druglist = read_file(drugfilelocationmap[x])
        if x in ['GEO', 'DM']:
            dl2 = [ ' '.join(y.split(' ')[1:]) for y in druglist]
            druglist = dl2
    #    printlist(druglist, "Drugs "+x)
        druglist2 = [ stringnormalize2(y).lower() for y in druglist]
        druglist3 = list(set(druglist2))
#        printlist(druglist3, "Drugs "+x)
        print "Checking name uniqueness", len(druglist2), len(druglist3)
        outmap[x] = druglist3
    return outmap

#run
#drugs = upload_drug_lists()

#####################
#goldens  standards

#standardfilelocationmap = {}

# first set of file on TTD golden standard
##standardfilelocationmap['covid19'] = '../ClinicalTrials_drugs_new_myFiltering_unique.txt'
##standardfilelocationmap['crc'] = '../evaluation_data/TTD_drug_colorectal_cancer_filtered_unique.txt'
##standardfilelocationmap['prc'] = '../evaluation_data/TTD_drug_prostate_cancer_filtered_unique.txt'
##standardfilelocationmap['asth'] = '../evaluation_data/TTD_drug_asthma_filtered_unique.txt'
##standardfilelocationmap['arth'] = '../evaluation_data/TTD_drug_rheumatoid_arthritis_filtered_unique.txt'




def upload_standards_lists(standardfilelocationmap) :

    outmap = {}
    for x in standardfilelocationmap.keys() :
        druglist = read_file(standardfilelocationmap[x])
#        printlist(druglist, "Drugs "+x)
        druglist2 = [ stringnormalize2(y).lower() for y in druglist]
        druglist3 = list(set(druglist2))
#        printlist(druglist3, "Drugs "+x)
        print "Checking name uniqueness", len(druglist2), len(druglist3)
        outmap[x] = druglist3
    return outmap

# run
#standards = upload_standards_lists()

#################################################################
#


def parse_mesh(infile):

    separator = '","'
    drugindex = 3
    aliasindex = 4
    meshindex = 2
        
    
    print "Opening ", infile
    f = open(infile, 'r')
    ss = f.readline()
    linecount = 0
    lista = []
    print ss
    while ss != '' :

        ss = f.readline()
        ss1 = ss.strip().strip('"').split(separator)
        if len(ss1) >= 5 :
        
#            print "********************************************"
#            print ss1
            d0 =  ss1[drugindex]
            d1 = stringnormalize2(d0).lower()
            y0 = ss1[aliasindex].split('|')[0]
            y1 = stringnormalize2(y0).lower()
            if linecount < 0 :    
                print d1, y1, ss1[meshindex]
            lista.append((ss1[meshindex], d1, y1))
        else :
            print "Short :", ss1
            
        linecount +=1
        ss = f.readline()

    f.close()
    return lista
        
# run

def generate_mesh_data():

    meshfile = '../Mesh_D.csv'
    meshlist = parse_mesh(meshfile)
    print "length ", len(meshlist)
    #printlist(meshlist, "List of mesh drug alises")
    name_to_D = {}
    D_to_names = {}

    for record in meshlist:
        D = record[0]
    #    print D
        if D not in D_to_names.keys() :
            D_to_names[D]= [record[1], record[2]]
        else :
            D_to_names[D].append(record[2])
            

    #printmap(D_to_names, "Mappa d_to_names")

    # inverting

    for x in D_to_names.keys() :
        for y in D_to_names[x] :
            name_to_D[y] = x

    #printmap(name_to_D, "Mappa names_to_D")

    return (name_to_D, D_to_names)
        

#######################################################################
# testing presence by identity

def findintersections(drugs, standards, name_to_D, D_to_names):

    resultsmapping = {}
    filteredlistsmapping ={}

    for x in drugs.keys() :
        for y in  standards.keys() :
            druglist = drugs[x]
            residualdruglist = []
            standardlist = standards[y]
            standardset = set(standardlist)
            counter = 0
            aliascounter = 0
            filteredlistsmapping[(x,y)]= []
            for z in druglist:
                found = False
                if z in standardset :
                    counter += 1
                    found = True
                    filteredlistsmapping[(x,y)].append(z)
                else :
                    if z in name_to_D.keys() :
                        aliases = D_to_names[name_to_D[z]]
                        for zz in aliases :
                            if zz in standardset :
                                aliascounter +=1
                                found = True
                                filteredlistsmapping[(x,y)].append(z)
                                break
                if found == False :
                    residualdruglist.append(z)

# call usual lcs name matching on the residual listing.
            dumpdirectory = "./drug-names-dump"
            dumpfilename = str(x) + '_' + str(y) + '_dump.txt'
            residualdruglist1 = [zz for zz in residualdruglist if zz != None] #filter out None
            residualdruglist2 = [zz for zz in residualdruglist1 if len(zz) > 5 and number_ratio(zz) >0] # remove very short names and numerical codes..
     #       residualmatches = findmatchingsecondlist(residualdruglist2, standardlist, dumpdirectory , dumpfilename)
            drugmappingfromfile = init_findmatchingsecondlist(dumpdirectory, dumpfilename)
            residualmatches = findmatchingsecondlist(residualdruglist2, standardlist, drugmappingfromfile)

            filteredlistsmapping[(x,y)].extend(residualmatches)

            residualmatches2 = [z for z in residualdruglist if z not in residualmatches]
            aliasresidualmetches = 0
            for z in residualmatches2 :
                 if z in name_to_D.keys() :
                        aliases = D_to_names[name_to_D[z]]
                        aliases2 = [zz for zz in aliases if len(zz) > 5  and number_ratio(zz) >0 ] # remove very short names, and numerical codes..
                        if len(aliases2) > 0 :
     #                       matches = findmatchingsecondlist(aliases2, standardlist, dumpdirectory , dumpfilename)
                            matches = findmatchingsecondlist(aliases2, standardlist, drugmappingfromfile)
                            if len(matches) > 0 :
                                aliasresidualmetches += 1
                                filteredlistsmapping[(x,y)].append(z)
                        
            

            total =   counter+ aliascounter + len(residualmatches) +aliasresidualmetches
            resultsmapping[(x,y)] = (len(druglist), len(standardlist), counter, aliascounter, len(residualmatches), aliasresidualmetches, total)
            print "@ ", x, y , len(druglist), len(standardlist), counter, aliascounter, len(residualmatches), aliasresidualmetches, total

# dumping the mapping
            dump_findmatchingsecondlist(dumpdirectory, dumpfilename, drugmappingfromfile)
            

    return  (resultsmapping , filteredlistsmapping)              
            
# run
def generation_model_prarameters() :

    drugs = upload_drug_lists(drugfilelocationmap)
    standards = upload_standards_lists(standardfilelocationmap)
    (name_to_D, D_to_names) =  generate_mesh_data()    
    (resultsmapping , filteredlistsmapping) = findintersections(drugs, standards, name_to_D, D_to_names)
    printmap(resultsmapping, "Final results of generation of pramteres for input parameters of the random models")
    print "*********************************************"
    print resultsmapping


####################################################
# run
#generation_model_prarameters()
    

####################################################
# tabulated map of paremeters  for the no-fda-drug-filter case.
# log file name: 


######################################################
# testing uplad of fda drugs. 

#fdalocationmap={}
#fdalocationmap['fda'] = '../FDA_approved_drugs_filtered_unique.txt'
#fdaresult = upload_standards_lists(fdalocationmap)
#printlist(fdaresult['fda'], "Fda drug lsit")

# filter the drug lists with the fda drug lsit

def generation_model_prarameters_fda() :

    drugs = upload_drug_lists(drugfilelocationmap)
    standards = upload_standards_lists(fdalocationmap)
    (name_to_D, D_to_names) =  generate_mesh_data()    
    (resultsmapping , filteredlistsmapping) = findintersections(drugs, standards, name_to_D, D_to_names)
    printmap(resultsmapping, "Raw numbers of drugs after  fda filter")
    print "*********************************************"
    print resultsmapping
    print "Lenthg of the filtered mapping : "
    for x in filteredlistsmapping.keys() :
        print x, len(filteredlistsmapping[x])

    standards2 = upload_standards_lists(standardfilelocationmap)
    (resultsmapping2 , filteredlistsmapping2) = findintersections(filteredlistsmapping, standards2, name_to_D, D_to_names)
    printmap(resultsmapping2, "Number of drugs in  golden standrd after fda filter")
    print "*********************************************"
    print resultsmapping2


#run
#generation_model_prarameters_fda()

##############################################
# Outcome of counting of intersection of relevant data sets with name matching
# logs in directory drug-names-counting-logs
###########################################
rawnumbermapfdafiltered = {
 (('GEO', 'fda'), 'covid19'): (109, 359, 35, 0, 4, 1, 40),
 (('GEO', 'fda'), 'arth'): (109, 324, 5, 0, 3, 0, 8),
 (('GEO', 'fda'), 'asth'): (109, 479, 2, 1, 0, 0, 3),
 (('GEO', 'fda'), 'prc'): (109, 310, 8, 0, 1, 1, 10),
 (('GEO', 'fda'), 'crc'): (109, 217, 7, 0, 0, 0, 7),
 (('DM', 'fda'), 'crc'): (369, 217, 9, 0, 0, 0, 9),
 (('DM', 'fda'), 'covid19'): (369, 359, 54, 0, 3, 1, 58),
 (('DM', 'fda'), 'asth'): (369, 479, 7, 1, 1, 0, 9),
 (('DM', 'fda'), 'arth'): (369, 324, 16, 0, 4, 0, 20),
 (('DM', 'fda'), 'prc'): (369, 310, 9, 0, 3, 1, 13),
 (('CMAP', 'fda'), 'crc'): (455, 217, 5, 2, 0, 0, 7),
 (('CMAP', 'fda'), 'covid19'): (455, 359, 50, 1, 4, 1, 56),
 (('CMAP', 'fda'), 'asth'): (455, 479, 7, 3, 0, 0, 10),
 (('CMAP', 'fda'), 'arth'): (455, 324, 16, 0, 5, 0, 21),
 (('CMAP', 'fda'), 'prc'): (455, 310, 13, 0, 2, 1, 16),
 (('L1000', 'fda'), 'prc'): (449, 310, 11, 0, 5, 2, 18),
 (('L1000', 'fda'), 'asth'): (449, 479, 10, 1, 3, 0, 14),
 (('L1000', 'fda'), 'covid19'): (449, 359, 39, 7, 13, 1, 60),
 (('L1000', 'fda'), 'crc'): (449, 217, 9, 0, 0, 0, 9),
 (('L1000', 'fda'), 'arth'): (449, 324, 11, 1, 6, 0, 18)
}

rawnumbermap ={
    ('GEO', 'arth'): (132, 324, 8, 0, 3, 0, 11),
    ('GEO', 'prc'): (132, 310, 11, 0, 1, 1, 13),
    ('GEO', 'crc'): (132, 217, 10, 0, 0, 0, 10),
    ('GEO', 'covid19'): (132, 359, 36, 0, 4, 1, 41),
    ('GEO', 'asth'): (132, 479, 2, 1, 0, 0, 3),
    ('DM', 'asth'): (656, 479, 8, 1, 2, 0, 11),
    ('DM', 'arth'): (656, 324, 19, 0, 5, 0, 24),
    ('DM', 'crc'): (656, 217, 10, 0, 1, 0, 11),
    ('DM', 'prc'): (656, 310, 11, 0, 3, 2, 16),
    ('DM', 'covid19'): (656, 359, 59, 0, 9, 1, 69),
    ('CMAP', 'asth'): (1309, 479, 16, 4, 1, 0, 21),
    ('CMAP', 'crc'): (1309, 217, 9, 2, 1, 0, 12),
    ('CMAP', 'arth'): (1309, 324, 20, 0, 6, 0, 26),
    ('CMAP', 'prc'): (1309, 310, 17, 1, 2, 1, 21),
    ('CMAP', 'covid19'): (1309, 359, 61, 1, 9, 1, 72),
    ('L1000', 'asth'): (4099, 479, 16, 2, 0, 0, 18),
    ('L1000', 'covid19'): (4099, 359, 50, 7, 12, 1, 70),
    ('L1000', 'prc'): (4099, 310, 16, 0, 6, 3, 25),
    ('L1000', 'arth'): (4099, 324, 16, 1, 7, 0, 24),
    ('L1000', 'crc'): (4099, 217, 16, 0, 0, 0, 16)    
    }
    

####
from randomizedmodel import generate_random

def generate_distibution_parameters(datamap, datastring):

    print datastring

    outmap = {}

    for x in datamap.keys() :
        record = datamap[x]
        numitems = record[0]
        numhits = record[6]
        repeatflag = True
        iteration = 0
        while repeatflag :    
            (precat20_parameters1, rhr_parameters1) = generate_random(numitems, numhits, 10000)
            (precat20_parameters2, rhr_parameters2) = generate_random(numitems, numhits, 100000)
            err1 = abs(precat20_parameters1[0] - precat20_parameters2[0])
            err2 = abs(rhr_parameters1[0] - rhr_parameters2[0])        
            if  err1 > 0.01 or err2 > 0.01 :
                iteration += 1
                (precat20_parameters1, rhr_parameters1) = (precat20_parameters2, rhr_parameters2)
                (precat20_parameters2, rhr_parameters2) = generate_random(numitems, numhits, 100000 + (iteration*10000))

            elif  err1 <= 0.01 and err2 <= 0.01 :
                repeatflag = False
            elif iteration > 10 :
                print "Not reached convergence after ", iteration, "iterations for ", x
            

        outmap[x] = (precat20_parameters2, rhr_parameters2 , (err1,err2))
        print x, (precat20_parameters2, rhr_parameters2), (err1,err2)
        print "********************************************"       

    return outmap    

# runs

####################################################
##distributionmapfdafiltered = generate_distibution_parameters(rawnumbermapfdafiltered, "Distribution parameters for fda filter cases")
##print(distributionmapfdafiltered)
##printmap(distributionmapfdafiltered, "parameters outmap for the fda drugs filter cases")


distributionmapfdafiltered ={
(('DM', 'fda'), 'arth'): ((1.0814, 0.988171951048019), (0.34995644821669897, 0.2781582371665365), (0.007500000000000062, 0.006317219303256516)),
(('DM', 'fda'), 'covid19'): ((3.1356, 1.5817830636268058), (1.018486540429801, 0.4497093267532568), (0.00790000000000024, 0.004969584798527826)),
(('L1000', 'fda'), 'prc'): ((0.79827, 0.8582903784406168), (0.26645672695565514, 0.2418757591042966), (0.00387000000000004, 0.00017823586684140302)),
(('GEO', 'fda'), 'crc'): ((1.28537, 0.9961645880771236), (0.3394776110096383, 0.29062666186617603), (0.009130000000000082, 0.003943184324365245)),
(('CMAP', 'fda'), 'crc'): ((0.30737, 0.5399412916845541), (0.10340889787503448, 0.15401546148153142), (0.0019300000000000428, 0.0011479592457972893)),
(('CMAP', 'fda'), 'prc'): ((0.70093, 0.8071143967471367), (0.23503596146643765, 0.22850746063636174), (0.0009300000000000974, 0.0012531906658720116)),
(('L1000', 'fda'), 'asth'): ((0.62556, 0.7635054130817659), (0.2085586798257209, 0.21598914298430036), (0.0040400000000000436, 0.002420219477575397)),
(('DM', 'fda'), 'asth'): ((0.48779, 0.670742435554922), (0.15765785001562746, 0.18911574449806248), (0.003709999999999991, 0.0017912780044496424)),
(('CMAP', 'fda'), 'arth'): ((0.92153, 0.9215101469378996), (0.3078356444959725, 0.2597484994294702), (0.005929999999999991, 0.002621883327022456)),
(('CMAP', 'fda'), 'covid19'): ((2.45793, 1.4339981445618353), (0.8250543184359673, 0.40882043036869053), (0.005669999999999842, 0.00482049353323899)),
(('GEO', 'fda'), 'covid19'): ((7.32937, 1.9578875698919393), (1.934183020617755, 0.5684240720794994), (0.00262999999999991, 0.001094865117628352)),
(('GEO', 'fda'), 'asth'): ((0.54942, 0.6626175776573862), (0.1447559575638756, 0.19264761158955557), (0.0014199999999999768, 0.0018313759594054124)),
(('L1000', 'fda'), 'arth'): ((0.81105, 0.8652949698535457), (0.2704178267675148, 0.24627009619255633), (0.005550000000000055, 0.003690212332401188)),
(('DM', 'fda'), 'crc'): ((0.48737, 0.6715541623353469), (0.15766943536975742, 0.18965084325876577), (2.999999999997449e-05, 0.002506984611604396)),
(('DM', 'fda'), 'prc'): ((0.69909, 0.7988426336867193), (0.22726009369872568, 0.22630371682029776), (0.006709999999999994, 0.00040966330758865355)),
(('GEO', 'fda'), 'prc'): ((1.84111, 1.1769612654111445), (0.48484992492947343, 0.3408849014005219), (0.007209999999999939, 0.003628559943446852)),
(('CMAP', 'fda'), 'asth'): ((0.44011, 0.6423685190551781), (0.14773461319308728, 0.18342152731639202), (0.0038900000000000046, 0.001036570902294781)),
(('L1000', 'fda'), 'covid19'): ((2.67045, 1.4885862273948272), (0.8935351099015224, 0.42437413698679544), (0.004049999999999887, 0.005410405058146717)),
(('L1000', 'fda'), 'crc'): ((0.39965, 0.6107811457765214), (0.13391766374710257, 0.1742702331470115), (0.005149999999999988, 0.0005020777635688645)),
(('GEO', 'fda'), 'arth'): ((1.46248, 1.059690275049644), (0.38591715835331547, 0.30770769839102935), (0.0027200000000000557, 0.0003974752776646495))
}

###############################################

##distributionmap = generate_distibution_parameters(rawnumbermap, "Distribution parameters all drugs")
##print(distributionmap)
##printmap(distributionmap, "outmap of all drugs")

distributionmap = {
('DM', 'arth'): ((0.73077, 0.8298988458968624), (0.2581339361599622, 0.23492654074314026), (0.0012699999999999934, 0.0035606279571323007)),
('GEO', 'crc'): ((1.51605, 1.0955886092160718), (0.4138592448895017, 0.315926608271203), (0.005849999999999911, 0.0002936259297390831)),
('DM', 'prc'): ((0.48964, 0.6813643026847898), (0.17309314305734205, 0.19487883285156873), (0.0019599999999999618, 0.0013171272508638587)),
('CMAP', 'prc'): ((0.31993, 0.5567026982860266), (0.12475855538344223, 0.16016183513274487), (0.0006300000000000194, 1.142465309382501e-05)),
('DM', 'asth'): ((0.33507, 0.5654920803273279), (0.11798467215136708, 0.16025861224787807), (0.006269999999999998, 0.00011115339481675146)),
('GEO', 'arth'): ((1.66529, 1.1455707482401043), (0.4551388508424973, 0.32917212217078556), (0.006010000000000071, 0.003230903554963638)),
('CMAP', 'crc'): ((0.18155, 0.4219139457445986), (0.07097638707191874, 0.12074192900669675), (0.0045499999999999985, 0.00012288016483978648)),
('CMAP', 'covid19'): ((1.0996, 1.011538467929283), (0.42546421690521297, 0.28710346313688134), (0.006500000000000172, 0.005106057900426952)),
('DM', 'covid19'): ((2.1135, 1.3507316516465984), (0.7430220883665937, 0.3844496196953152), (0.007199999999999651, 0.0067526830865575205)),
('L1000', 'asth'): ((0.08882, 0.2966679755532726), (0.039244847340599846, 0.08573268418491858), (0.0017199999999999993, 0.0002795412603678049)),
('CMAP', 'arth'): ((0.39714, 0.6189698309582756), (0.15422109028207692, 0.1773517965304543), (0.0005600000000000049, 0.0005860306181068309)),
('GEO', 'covid19'): ((6.21701, 1.9137432649216144), (1.7009452454528986, 0.5539598322540839), (0.004889999999999617, 0.0013611177431520627)),
('L1000', 'arth'): ((0.11764, 0.3407667701227868), (0.052193650776472506, 0.0977735399197616), (0.0019600000000000034, 0.0005218664989856681)),
('GEO', 'asth'): ((0.45636, 0.6186108447107697), (0.12418813586472155, 0.17724601456246555), (0.00494, 0.0058643721688918515)),
('CMAP', 'asth'): ((0.31904, 0.5563241621264833), (0.12413685142519763, 0.15854184731658966), (0.0022599999999999842, 0.0007141129910811783)),
('L1000', 'prc'): ((0.12301, 0.3491128165759415), (0.0543324330714143, 0.09884293786099516), (0.0012899999999999995, 0.0007481130042537865)),
('L1000', 'covid19'): ((0.33995, 0.5750193944320833), (0.15160897720740577, 0.1641196280839236), (0.0042500000000000315, 0.0002854307338890083)),
('DM', 'crc'): ((0.33559, 0.565908609605424), (0.11880487938399233, 0.16103488765269822), (0.005809999999999982, 0.0015794224073929913)),
('GEO', 'prc'): ((1.97594, 1.2358949756204642), (0.5410141772637432, 0.3583609286009016), (0.0038599999999999746, 0.0006332345843960141)),
('L1000', 'crc'): ((0.07764, 0.27751180250217333), (0.034614115387829894, 0.07915886914253323), (0.00025999999999999635, 0.0009059114998331078))
}


################################################
# function to compute z-scores and p-values for precision@20 and rhr


import scipy.stats

def compute_zscores_pval(drugstr, diseasestr, fdafilterflag, inprecision, inrhr):

    if drugstr in ['L1000up', 'L1000updown', 'L1000down', 'L1000']:
        drugstr = 'L1000'
    elif drugstr in ['CMAPup', 'CMAPupdown', 'CMAPdown', 'CMAP']:
        drugstr = 'CMAP'   

    if  fdafilterflag==True:
        key = ((drugstr, 'fda'), diseasestr)
        parameters = distributionmapfdafiltered 
    else :
        key = (drugstr, diseasestr)
        parameters = distributionmap

    
    if key not in parameters.keys():
        print key
        print parameters
        return None
    else :
        pass
#        print key, parameters[key]
        

    precmean = parameters[key][0][0]
    precstd = parameters[key][0][1]
    rhrmean= parameters[key][1][0]
    rhrstd = parameters[key][1][1]

    z_prec = (inprecision - precmean)/precstd
    p_prec = scipy.stats.norm.sf(abs(z_prec))*2
    z_rhr = (inrhr - rhrmean)/ rhrstd
    p_rhr = scipy.stats.norm.sf(abs(z_rhr))*2

    return ((z_prec,p_prec),(z_rhr,p_rhr))

##########################
# testing datafrom the main comaprison table:

## with fda filter
##print "Taguchi GEO " ,   compute_zscores_pval('GEO', 'covid19', True, 5, 1.495)
##print "Taguchi DM " ,    compute_zscores_pval('DM', 'covid19', True, 4, 0.998)
##print "Taguchi L1000 " ,  compute_zscores_pval('L1000', 'covid19', True, 4, 1.018)
##print "Mousawi cmap1 " , compute_zscores_pval('CMAP', 'covid19', True, 1, 0.02)
##print "Mousawi cmap2 " , compute_zscores_pval('CMAP', 'covid19', True, 1, 0.02)

##print "merge-drug GEO"    ,  compute_zscores_pval('GEO', 'covid19', True, 12, 3.126)
    
# all drugs
##print "Taguchi GEO " ,   compute_zscores_pval('GEO', 'covid19', False, 3, 0.566)
##print "Taguchi DM " ,    compute_zscores_pval('DM', 'covid19', False, 2, 0.578)
##print "Taguchi L1000 " ,  compute_zscores_pval('L1000', 'covid19', False, 0, 0.099)
##print "Mousawi cmap1 " , compute_zscores_pval('CMAP', 'covid19', False, 1, 0.058)
##print "Mousawi cmap2 " , compute_zscores_pval('CMAP', 'covid19', False, 1, 0.052)

##print "merge-drug GEO"    ,  compute_zscores_pval('GEO', 'covid19', False, 9, 3.104)


####################################################################################
# zscore per cmap output on 4 diseases

##print "CMAP_asth_fdaonly " , compute_zscores_pval('CMAP', 'asth', True, 1, 0.166208791209)
##print "CMAP_asth_nofda " , compute_zscores_pval('CMAP', 'asth', False, 0 , 0.0757003079839 )
##print "CMAP_arth_fdaonly " , compute_zscores_pval('CMAP', 'arth', True,0 , 0.119697931748 )
##print "CMAP_arth_nofda " , compute_zscores_pval('CMAP', 'arth', False,0 , 0.0402557463108)
##print "CMAP_crc_fdaonly " , compute_zscores_pval('CMAP', 'crc', True, 1 , 0.0926315789474 )
##print "CMAP_crc_nofda " , compute_zscores_pval('CMAP', 'crc', False, 0 , 0.043031688267)
##print "CMAP_prc_fdaonly " , compute_zscores_pval('CMAP', 'prc', True, 0 , 0.17791214088 )
##print "CMAP_prc_nofda " , compute_zscores_pval('CMAP', 'prc', False, 1 , 0.101397042835 )

##print "Mousawi cmap1 fdaonly" , compute_zscores_pval('CMAP', 'covid19', True, 2, 0.642857142857)
##print "Mousawi cmap2 fdaonly " , compute_zscores_pval('CMAP', 'covid19', True, 2, 0.642857142857)
##print "Mousawi cmap1 nofda" , compute_zscores_pval('CMAP', 'covid19', False, 2, 0.558823529412)
##print "Mousawi cmap2 nofda" , compute_zscores_pval('CMAP', 'covid19', False, 2, 0.552631578947)



#######################################################################
# checking the new TTD drug anems vs the old ones..

#newstandardfilelocationmap = {}

# second set of files on TTD golden standard
##newstandardfilelocationmap['covid19'] = '../ClinicalTrials_drugs_new_myFiltering_unique.txt'
##newstandardfilelocationmap['crc'] = '../evaluation_data/TTD_drug_colorectal_filtered_bis_unique.txt'
##newstandardfilelocationmap['prc'] = '../evaluation_data/TTD_drug_prostate_filtered_bis_unique.txt'
##newstandardfilelocationmap['asth'] = '../evaluation_data/TTD_drug_asthma_filtered_bis_unique.txt'
##newstandardfilelocationmap['arth'] = '../evaluation_data/TTD_drug_rheumatoid_filtered_bis_unique.txt'


# comapre old TTD an new TTD lists:
def TTD_compare():
    mapold = upload_standards_lists(standardfilelocationmap)
    mapnew = upload_standards_lists(newstandardfilelocationmap)

    for x in mapnew.keys() :
        print '**********************************'
        print x, len(mapold[x]), len(mapnew[x])
        printlist(list(set(mapold[x])-set(mapnew[x])), 'In old not in new')
        printlist(list(set(mapnew[x])-set(mapold[x])), 'In new not in old')

# run 
#TTD_compare()
    
##########################################################################################################
# function to export for name matching

from code_for_drugnames_matching import fda2, covid19ct2, prostcan2, asthma2, arthritis2, colorectcan2
(name_to_D, D_to_names) =  generate_mesh_data()

########################################################################################################

# old version
##def filterbyarthritisdata(inlist, conf):
##
##    out = findmatchingsecondlist(inlist , arthritis2, './running-dumps', 'arthritis_filter_dump.txt')
##    printmap( out, "Drug filtered by including only  drugs in rheumatoid arthritis practice")
##    return out

# new version
def filterbyarthritisdata(inlist, conf):

    print "Begin filterbyarthritisdata"

    drugs = dict([('arth_ge', inlist),])
    standards = dict([('arth', arthritis2),])
#    (name_to_D, D_to_names) =  generate_mesh_data()    
    (resultsmapping , filteredlistsmapping) = findintersections(drugs, standards, name_to_D, D_to_names)


    out = filteredlistsmapping[('arth_ge','arth')]
    printmap( resultsmapping, "Drug filtered by including only  drugs in rheumatoid arthritis practice")
    printlist( out , 'matched list of drugs arth  and arth_ge')
    print "End filterbyarthritisdata" 
    return out




#############################################################################################################

# old version
##def filterbyasthmadata(inlist, conf):
##
##    out = findmatchingsecondlist(inlist , asthma2, './running-dumps', 'asthma_filter_dump.txt')
##    printmap( out, "Drug filtered by including only  drugs in asthma practice")
##    return out

# new version
def filterbyasthmadata(inlist, conf):

    print "Begin filterbyasthmadata"

    drugs = dict([('asth_ge', inlist),])
    standards = dict([('asth', asthma2),])
#    (name_to_D, D_to_names) =  generate_mesh_data()    
    (resultsmapping , filteredlistsmapping) = findintersections(drugs, standards, name_to_D, D_to_names)


    out = filteredlistsmapping[('asth_ge','asth')]
    printmap( resultsmapping, "Drug filtered by including only  drugs in asthma practice")
    printlist( out , 'matched list of drugs asth  and asth_ge')
    print "End filterbyasthmadata" 
    return out



###############################################################################################################

# old version
##def filterbycolorectcandata(inlist, conf):
##
##    out = findmatchingsecondlist(inlist , colorectcan2, './running-dumps', 'colorectal_cancer_filter_dump.txt')
##    printmap( out, "Drug filtered by including only  drugs in colorectal cancer  practice")
##    return out

# new version
def filterbycolorectcandata(inlist, conf):

    print "Begin filterbycolorectcandata"

    drugs = dict([('crc_ge', inlist),])
    standards = dict([('crc', colorectcan2),])
#    (name_to_D, D_to_names) =  generate_mesh_data()    
    (resultsmapping , filteredlistsmapping) = findintersections(drugs, standards, name_to_D, D_to_names)


    out = filteredlistsmapping[('crc_ge','crc')]
    printmap( resultsmapping, "Drug filtered by including only  drugs in colorectal cancer practice")
    printlist( out , 'matched list of drugs crc  and crc_ge')
    print "End filterbycolorectcandata" 
    return out


###############################################################################################################

# old version
##def filterbyprostcandata(inlist, conf):
##
##    out = findmatchingsecondlist(inlist , prostcan2, './running-dumps', 'prostate_cancer_filter_dump.txt')
##    printmap( out, "Drug filtered by including only  drugs in prostate cancer practice")
##    return out

def filterbyprostcandata(inlist, conf):

    print "Begin filterbyprostcandata"

    drugs = dict([('prc_ge', inlist),])
    standards = dict([('prc', prostcan2),])
#    (name_to_D, D_to_names) =  generate_mesh_data()    
    (resultsmapping , filteredlistsmapping) = findintersections(drugs, standards, name_to_D, D_to_names)


    out = filteredlistsmapping[('prc_ge','prc')]
    printmap( resultsmapping, "Drug filtered by including only  drugs in prostate cancer practice")
    printlist( out , 'matched list of drugs prc  and prc_ge')
    print "End filterbyprostcandata" 
    return out


###############################################################################################################

# old version
##def filterbycovid19clinicaltrial(inlist, conf):
##
##    out = findmatchingsecondlist(inlist , covid19ct2, './running-dumps', 'trial_filter_dump.txt')
##    printmap( out, "Drug filtered by includign ony  drugs in covid19 clinical trials")
##    return out

    # new version
def filterbycovid19clinicaltrial(inlist, conf):

    print "Begin filterbycovid19clinicaltrial"

    drugs = dict([('covid19_ge', inlist),])
    standards = dict([('covid19_ct', covid19ct2),])
#    (name_to_D, D_to_names) =  generate_mesh_data()    
    (resultsmapping , filteredlistsmapping) = findintersections(drugs, standards, name_to_D, D_to_names)


    out = filteredlistsmapping[('covid19_ge','covid19_ct')]
    printmap( resultsmapping, "Drug filtered by including only  drugs in clinical trials")
    printlist( out , 'matched list of drugs covid19_ct  and covid19_ge')
    print "End filterbycovid19clinicaltrial" 
    return out

    

########################################################### 

# old version
##def filterbyfdaapproveddrugs(inlist, conf2):  # confiuration of the type (algindex, gedatastring, drugstring) for command_1
##
##    out = findmatchingsecondlist(inlist , fda2, './running-dumps', 'fda_filter_dump.txt')
##    printmap( out, "Drug filtered by includign ony fda approved drugs")
##    return out

# new version
def filterbyfdaapproveddrugs(inlist, conf2):  # confiuration of the type (algindex, gedatastring, drugstring) for command_1

    print "Begin filterbyfdaapproveddrugs"
    if len(conf2) == 3 :
        drugstring = conf2[2]
    else :
        drugstring = conf2[2]

    drugs = dict([(drugstring, inlist),])
    standards = dict([('fda', fda2),])
#    (name_to_D, D_to_names) =  generate_mesh_data()    
    (resultsmapping , filteredlistsmapping) = findintersections(drugs, standards, name_to_D, D_to_names)


    out = filteredlistsmapping[(drugstring,'fda')]
    printmap( resultsmapping, "Drug filtered by including only  drugs in rheumatoid arthritis practice")
    printlist( out , 'matched list of drugs arth  and ath_ge')
    print "End filterbyfdaapproveddrugs "
    return out

############################################################
