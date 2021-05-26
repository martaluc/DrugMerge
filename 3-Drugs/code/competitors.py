
cmap1 = [
    ('lansoprazole',),
    ('folic_acid',),
    ('sulfamonomet_hoxine',),
    ('tolnaftate',),
    ('diclofenamide',),
    ('metronidazole',),
    ('lidocaine',),
    ('benzocaine',),
    ('molindone',),
    ('benzethonium_chloride',),
    ('monorden',),
    ('sodum_phenylbutyrate',),
    ('cinchonine',),
    ('egrgocryptine',),
    ('ambroxol',),
    ('oxolinic_acid',),
    ('budesonide',),
    ('benzamil',),
    ('piretanide',),
    ('phenelzine',),
    ]


cmap2 = [
    ('lansoprazole',),
    ('folic_acid',),
    ('sulfamonomet_hoxine',),
    ('tolfonate',),
    ('halcinonide',),
    ('sequinavir',),
    ('lomustine',),
    ('ebselen',),
    ('benzocaine',),
    ('dimethylpiperidine',),
    ('aminocaproi_acid',),
    ('propylthiouracil',),
    ('azathymine',),
    ('idixanol',),
    ('procaine',),
    ('propantheline_bromide',),
    ('canavanine',),    
    ('piperlongumine',),    
    ('simvastatin',),
    ('arecoline',),
    ]


barabasilist = [
('Ritonavir',),
('Isoniazid',),
('Troleandomycin',),
('Cilostazol',),
('Chloroquine',),
('Rifabutin',),
('Flutamide',),
('Dexamethasone',),
('Rifaximin',),
('Azelastine',),
('Folic Acid',),
('Rabeprazole',),
('Methotrexate',),
('Digoxin',),
('Theophylline',),
('Fluconazole',),
('Aminoglutethimide',),
('Hydroxychloroquine',),
('Methimazole',),
('Ribavirin',),
('Omeprazole',),
('Bortezomib',),
('Leflunomide',),
('Dimethylfumarate',),
('Colchicine',),
('Quercetin',),
('Mebendazole',),
('Mesalazine',),
('Pentamidine',),
('Verapamil',),
('Melatonin',),
('Griseofulvin',),
('Auranofin',),
('Atovaquone',),
('Montelukast',),
('Romidepsin',),
('Cobicistat',),
('Lopinavir',),
('Pomalidomide',),
('Sulfinpyrazone',),
('Levamisole',),
('Calcitriol',),
('Interferon beta-1a',),
('Praziquantel',),
('Ascorbic acid',),
('Fluvastatin',),
('Interferon beta-1b',),
('Selegiline',),
('Deferoxamine',),
('Ivermectin',),
('Atorvastatin',),
('Mitoxantrone',),
('Glyburide',),
('Thalidomide',),
('Glyburide',),
('Thalidomide',),
('Sulfanilamide',),
('Hydralazine',),
('Gemfibrozil',),
('Ruxolitinib',),
('Propranolol',),
('Carbamazepine',),
('Doxorubicin',),
('Levothyroxine',),
('Dactinomycin',),
('Tenofivir',),
('Tadalafil',),
('Doxazosin',),
('Rosiglitazone',),
('Aminolevulinic acid',),
('Nitroglycerin',),
('Metformin',),
('Nintedanib',),
('Allopurinol',),
('Ponatinib',),
('Sildenafil',),
('Dapagliflozin',),
('Nitroprusside',),
('Cinacalcet',),
('Mexiletine',),
('Sitagliptin',),
('Carfilzomib',),
('Azithromycin',),
]


zhoulist =[
('Irbesartan',),
('Nadroparin',),
('Dienestrol',),
('Toremifene',),
('Permethrin',),
('Mestranol',),
('Camphor',),
('Conjugated_estrogens',),
('Equilin',),
('Methotrexate',),
('Fluorouracil',),
('Hexestrol',),
('Mesalazine',),
('Mercaptopurine',),
('Paroxetine',),
('Pseudoephedrine',),
('3-sulfino-L-alanine',),
('Furazolidone',),
('Phenolphthalein',),
('Sirolimus',),
('Vinblastine',),
('Phenylbutazone',),
('Quinestrol',),
('Ospemifene',),
('Xanthinol',),
('Synthetic_estrogens',),
('Naloxone',),
('Cladribine',),
('Hydralazine',),
('Myristic',),
('Menadione',),
('Docetaxel',),
('Tandutinib',),
('Regorafenib',),
('Ocriplasmin',),
('Vinorelbine',),
]



def read_file(file_name):
    res = list()
    r = open(file_name)
    for line in r:
            line = line.split('\n')
            res.append(line[0])
    r.close()
    return(res)


def printlist(inlist, explanationstring) :

    print "*************************************************************"
    print explanationstring, "size", len(inlist)
    for x in range(len(inlist)) :
        print x, inlist[x]


        
def test1 ():
    print len(barabasilist)
    

    ct = read_file('../ClinicalTrials_drugs_new_myFiltering_unique.txt')
    ct2 = [s.lower() for s in ct]
    printlist(ct, "All drugs in current trials (new listing)")    
   
    barabasilist2 = [(s[0].lower(),) for s in barabasilist]
    printlist(barabasilist2, "barabasi list)")    

    score = 0.0
    precat20 = 0
    for i in range(len(barabasilist2)):
        if barabasilist2[i][0] in ct2 :
            score += 1.0/float(i+1)
            if i<=19 :
                precat20 += 1
                
    print "score, precat20", score, precat20

################################
    
#test1()

  


def test2 (inlist, instring):

    ct = read_file('../ClinicalTrials_drugs_new_myFiltering_unique.txt')
    ct2 = [s.lower() for s in ct]
    printlist(ct2, "All drugs in current trials (new listing)")    
 

    print "#########################################"
    print instring, len(inlist)
    
    inlist1 = [(s[0].lower(),) for s in inlist]
    printlist(inlist1, instring+" list")    

    score = 0.0
    precat20 = 0
    for i in range(len(inlist1)):
        if inlist1[i][0] in ct2 :
            score += 1.0/float(i+1)
            if i<=19 :
                precat20 += 1
                
    print "score, precat20", score, precat20

#########################################
#test2(barabasilist, 'barabasi')
#test2(cmap1, 'camp1')
#test2(cmap2, 'camp2')

##########################################################################
# use lcs matching on names

from random_drug_scoring_model  import filterbycovid19clinicaltrial, filterbyfdaapproveddrugs
from newdataanalysis4merge import computeinvranstst3

def test3(inlist , instring, fdadrugsonly ):

    print "#########################################"
    print instring, len(inlist)

    drugnames = [s[0].lower() for s in inlist]
    inlist1 = [(x,) for x in drugnames]
    printlist(drugnames, instring+" list")

    if fdadrugsonly == True :
        drugnames2 = filterbyfdaapproveddrugs(drugnames, (None, None, 'CMAP'))
        printlist(drugnames2, instring+ "fda only list")
        inlist1 = [(x,) for x in drugnames if x in drugnames2]
        drugnames = drugnames2
        
     
    ct_drugnames = filterbycovid19clinicaltrial(drugnames, None)
    print ct_drugnames
    computeinvranstst3(inlist1, ct_drugnames, instring, 'cells', None)

############################################

test3(barabasilist, 'Barabasi et al. nofda', False)
test3(cmap1, 'Mousavi et al. camp1, nofda', False)
test3(cmap2, 'Mousavi et al camp2, nofda', False)
test3(zhoulist, 'Zhou et al 2020 (40 drugs), nofda', False)
##
test3(barabasilist, 'Barabasi et al. fda drugs only ', True)
test3(cmap1, 'Mousavi et al. camp1 fda drugs only ', True)
test3(cmap2, 'Mousavi et al camp2 fda drugs only ', True)
test3(zhoulist, 'Zhou et al 2020 (40 drugs) fda drugs only ', True)


############################################

####################################################
# code for the 4 diese upladed from cmap results via the PharmacoGx R library

from random_drug_scoring_model  import filterbyasthmadata, filterbycolorectcandata, filterbyprostcandata, filterbyarthritisdata





# we add as a patameter the function for the folde standard evaluation

def test5(inlist , instring, fdadrugsonly , testfunction, teststring, drugstring):

    print "#########################################"
    print instring, len(inlist)

    drugnames = [s[0].lower() for s in inlist]
    inlist1 = [(x,) for x in drugnames]
#    printlist(drugnames, instring+" list")
    print "Inlist size " + instring , len(inlist1)

    if fdadrugsonly == True :
        drugnames2 = filterbyfdaapproveddrugs(drugnames,(None, None, 'CMAP'))
#        printlist(drugnames2.keys(), instring+ "fda only list")
        printlist(drugnames2, instring+" fda only list")
        inlist1 = [(x,) for x in drugnames if x in drugnames2]
        drugnames = drugnames2
        
     
    ct_drugnames = testfunction(drugnames, None)
    print ct_drugnames
    computeinvranstst3(inlist1, ct_drugnames, instring, teststring, None)


def splitrecord(x):

    y = x.split(',')
    leny = len(y) 
    if leny == 3 :
        return y[0].strip('"')
    else :
        y2 = '_'.join(y[:leny-2])
        return y2[0].strip('"')


####################################################


def Asthma_diseases_comaprative_data():


# asthma

    linesfile1 = read_file('../CMAP_PharmacoGx/CMAP_PharmacoGx/CMAP_Asthma.csv')
    drugnamesasthma1 = [(splitrecord(x),) for x in linesfile1[1:]]
#    printlist(linesfile1, 'CMAP_asthma')
#    printlist(drugnamesasthma1, 'CMAP_asthma names only')
#    print 'CMAP_asthma names only', len(linesfile1), len(drugnamesasthma1) 
    test5(drugnamesasthma1, "CMAP asthma nofda", False, filterbyasthmadata, 'asth', '' )

    linesfile1 = read_file('../CMAP_PharmacoGx/CMAP_PharmacoGx/CMAP_Asthma.csv')
    drugnamesasthma1 = [(splitrecord(x),) for x in linesfile1[1:]]
#    printlist(linesfile1, 'CMAP_asthma')
#    printlist(drugnamesasthma1, 'CMAP_asthma names only')
    test5(drugnamesasthma1, "CMAP asthma fdaonly ", True, filterbyasthmadata, 'asth', ''  )
       

    linesfile2 = read_file('../CMAP_PharmacoGx/CMAP_PharmacoGx/CMAP_Asthma_pvalue005.csv' )
    drugnamesasthma2 = [(splitrecord(x),) for x in linesfile2[1:]]
#    printlist(linesfile2, 'CMAP_asthma')
#    printlist(drugnamesasthma2, 'CMAP_asthma names only')
    test5(drugnamesasthma2, "CMAP asthma pval < 0.05 nofda ", False, filterbyasthmadata, 'asth' , '' )

    linesfile2 = read_file('../CMAP_PharmacoGx/CMAP_PharmacoGx/CMAP_Asthma_pvalue005.csv')
    drugnamesasthma2 = [(splitrecord(x),) for x in linesfile2[1:]]
#    printlist(linesfile2, 'CMAP_asthma')
#    printlist(drugnamesasthma2, 'CMAP_asthma names only')
    test5(drugnamesasthma2, "CMAP asthma pval < 0.05 fdaonly ", True, filterbyasthmadata, 'asth' , '' )


     
#######################################################################################   


def Arthritis_diseases_comaprative_data(): 

# arthritis

    linesfile3 = read_file('../CMAP_PharmacoGx/CMAP_PharmacoGx/CMAP_Rheuma.csv')
    drugnamesasthma3 = [(splitrecord(x),) for x in linesfile3[1:]]
##    printlist(linesfile3, 'CMAP_artiritis')
##    printlist(drugnamesasthma3, 'CMAP_arthritis names only')
    test5(drugnamesasthma3, "CMAP arthritis nodfa ", False, filterbyarthritisdata, 'arth' , ''  )


    linesfile3 = read_file('../CMAP_PharmacoGx/CMAP_PharmacoGx/CMAP_Rheuma.csv')
    drugnamesasthma3 = [(splitrecord(x),) for x in linesfile3[1:]]
##    printlist(linesfile3, 'CMAP_artiritis')
##    printlist(drugnamesasthma3, 'CMAP_arthritis names only')
    test5(drugnamesasthma3, "CMAP arthritis fdaonly ", True, filterbyarthritisdata, 'arth' , '' )


    linesfile4 = read_file('../CMAP_PharmacoGx/CMAP_PharmacoGx/CMAP_Rheuma_pvalue005.csv')
    drugnamesasthma4 = [(splitrecord(x),) for x in linesfile4[1:]]
##    printlist(linesfile4, 'CMAP_artiritis')
##    printlist(drugnamesasthma4, 'CMAP_arthritis names only')
    test5(drugnamesasthma4, "CMAP arthritis  pval < 0.05 nofda ", False, filterbyarthritisdata, 'arth' , '' )


    linesfile4 = read_file('../CMAP_PharmacoGx/CMAP_PharmacoGx/CMAP_Rheuma_pvalue005.csv')
    drugnamesasthma4 = [(splitrecord(x),) for x in linesfile4[1:]]
##    printlist(linesfile4, 'CMAP_artiritis')
##    printlist(drugnamesasthma4, 'CMAP_arthritis names only')
    test5(drugnamesasthma4, "CMAP arthritis  pval < 0.05 fdaonly ", True, filterbyarthritisdata, 'arth' , ''  )

#######################################################################################

def Colorectal_diseases_comaprative_data():
    
# colorectal cancer

    linesfile3 = read_file('../CMAP_PharmacoGx/CMAP_PharmacoGx/CMAP_Colorectal.csv')
    drugnamesasthma3 = [(splitrecord(x),) for x in linesfile3[1:]]
##    printlist(linesfile3, 'CMAP_crc')
##    printlist(drugnamesasthma3, 'CMAP_crc names only')
    test5(drugnamesasthma3, "CMAP coloractal cancer nofda", False, filterbycolorectcandata, 'crc' , '' )
##
##
    linesfile3 = read_file('../CMAP_PharmacoGx/CMAP_PharmacoGx/CMAP_Colorectal.csv')
    drugnamesasthma3 = [(splitrecord(x),) for x in linesfile3[1:]]
##    printlist(linesfile3, 'CMAP_crc')
##    printlist(drugnamesasthma3, 'CMAP_crc names only')
    test5(drugnamesasthma3, "CMAP coloractal cancer fdaonly", True, filterbycolorectcandata, 'crc' , '' )
##
##
    linesfile4 = read_file('../CMAP_PharmacoGx/CMAP_PharmacoGx/CMAP_Colorectal_pvalue005.csv')
    drugnamesasthma4 = [(splitrecord(x),) for x in linesfile4[1:]]
##    printlist(linesfile4, 'CMAP_crc')
##    printlist(drugnamesasthma4, 'CMAP_crc names only')
    test5(drugnamesasthma4, "CMAP coloractal cancer  pval < 0.05 nofda", False, filterbycolorectcandata, 'crc' , '' )
##
##
    linesfile4 = read_file('../CMAP_PharmacoGx/CMAP_PharmacoGx/CMAP_Colorectal_pvalue005.csv')
    drugnamesasthma4 = [(splitrecord(x),) for x in linesfile4[1:]]
##    printlist(linesfile4, 'CMAP_crc')
##    printlist(drugnamesasthma4, 'CMAP_crc names only')
    test5(drugnamesasthma4, "CMAP coloractal cancer  pval < 0.05 fdaonly", True, filterbycolorectcandata, 'crc' , '' )

#############################################################################################

#######################################################################################   
# prostatel cancer

def Prostate_diseases_comaprative_data():

    linesfile3 = read_file('../CMAP_PharmacoGx/CMAP_PharmacoGx/CMAP_Prostate.csv')
    drugnamesasthma3 = [(splitrecord(x),) for x in linesfile3[1:]]
##    printlist(linesfile3, 'CMAP_prc')
##    printlist(drugnamesasthma3, 'CMAP_prc names only')
    test5(drugnamesasthma3, "CMAP prostate cancer nofda", False, filterbyprostcandata, 'prc' , ''  )
##
##
    linesfile3 = read_file('../CMAP_PharmacoGx/CMAP_PharmacoGx/CMAP_Prostate.csv')
    drugnamesasthma3 = [(splitrecord(x),) for x in linesfile3[1:]]
##    printlist(linesfile3, 'CMAP_prc')
##    printlist(drugnamesasthma3, 'CMAP_prc names only')
    test5(drugnamesasthma3, "CMAP prostate cancer fdaonly", True, filterbyprostcandata, 'prc' , '' )
##
##
    linesfile4 = read_file('../CMAP_PharmacoGx/CMAP_PharmacoGx/CMAP_Prostate_pvalue005.csv')
    drugnamesasthma4 = [(splitrecord(x),) for x in linesfile4[1:]]
##    printlist(linesfile4, 'CMAP_prc')
##    printlist(drugnamesasthma4, 'CMAP_prc names only')
    test5(drugnamesasthma4, "CMAP prostate cancer  pval < 0.05 nfda", False, filterbyprostcandata, 'prc' , '' )
##
##
    linesfile4 = read_file('../CMAP_PharmacoGx/CMAP_PharmacoGx/CMAP_Prostate_pvalue005.csv')
    drugnamesasthma4 = [(splitrecord(x),) for x in linesfile4[1:]]
##    printlist(linesfile4, 'CMAP_prc')
##    printlist(drugnamesasthma4, 'CMAP_prc names only')
    test5(drugnamesasthma4, "CMAP prostate cancer  pval < 0.05 fdaonly", True, filterbyprostcandata, 'prc' , '' )

############################################################
# generate data for four diseases with output of CMAP algorithm

#Asthma_diseases_comaprative_data()
#Arthritis_diseases_comaprative_data()
#Colorectal_diseases_comaprative_data()
#Prostate_diseases_comaprative_data()

#######################################################################################################
#########################################################################################################
# compute zscre and pvalue 

from random_drug_scoring_model import compute_zscores_pval


def test6(inlist , instring, fdadrugsonly , testfunction, teststring):

    print "#########################################"
    print instring, len(inlist)

    drugnames = [s[0].lower() for s in inlist]
    inlist1 = [(x,) for x in drugnames]
    printlist(drugnames, instring+" list")

    if fdadrugsonly == True :
        drugnames2 = filterbyfdaapproveddrugs(drugnames)
        printlist(drugnames2.keys(), instring+ "fda only list")
        inlist1 = [(x,) for x in drugnames if x in drugnames2.keys()]
        drugnames = drugnames2
        
     
    ct_drugnames = testfunction(drugnames)
    print ct_drugnames
    (algstrc, suminvrserankc, precisionat20c, accumc, rankedlistc, noannotationdrugs) = computeinvranstst3(inlist1, ct_drugnames, instring, teststring, drugstring)
    ((z_prec,p_prec),(z_rhr,p_rhr)) = compute_zscores_pval(list(setdrugs)[0], list(setgedata)[0], fdadrugsonly, precisionat20c, suminvrserankc)
    print  '@@@@', (algstrc, suminvrserankc, (z_rhr,p_rhr), precisionat20c ,(z_prec,p_prec) , accumc)
    
