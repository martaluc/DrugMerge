# Code for uploading marta's results on balf GEO data
# testing properties of the data
# testing directionality of action functions.
# 2020-11-24 interfacing with code to find multi graph drug covering of modules.

######################################################
# implementing the modult greedy cover

from  codedrugcovering import finddrugcoverofmultigraphs

################################################
# generic utilities
from generic_util import printmap, printlist

##############################################
# import file handling utils

from file_handling_util import testexistencedirectory, testexistencefile

################################################
#
#from  code_for_drugnames_matching  import findmatchingsecondlist
from  code_for_drugnames_matching  import  read_file
from random_drug_scoring_model import filterbyfdaapproveddrugs, filterbycovid19clinicaltrial, filterbyarthritisdata, filterbyasthmadata, filterbycolorectcandata, filterbyprostcandata  

#############################################
#
#  code to load , update and dump the result of single runs

from codefordumping import putdatatodump, getdatafromdump

def uploadrunsmap(inlable):

    assert type(inlable) == str

    result = getdatafromdump('./modulation-dumps', inlable+'.txt')
    if result == None :
        return None
    else :
        return result


##def updaterunsmap(res, mapping, conf, weights, fdaonly, positivity):
##
###    lable = str(conf + (str(fdaonly), str(positivity)))
##    lable1 = ','.join(conf + (weights, str(fdaonly), str(positivity)))
##    lable = '(' + lable1 + ')'
##    print "updating with key : ", lable
##    if lable in mapping.keys() :
##        print "Overwiriting exisitng entry in the stored mapping for : ", lable
##    mapping[lable] = res
##    return mapping



def dumprunsmap(inlable, saveddata):

    assert type(inlable) == str
    
    putdatatodump('./modulation-dumps',inlable + '.txt', saveddata)


###############################################
# older version


def load_data (directory, filename, separator) :

    testexistencedirectory(directory)
    testexistencefile(directory,filename)

    print "Opening", directory, filename

    

    f = open(directory + '/' + filename)
    accumulator = []

    line = f.readline()
    ll = line.split(separator)
    print "Header : ", len(ll), ll
    numfields = len(ll)
    line = f.readline()
    while line != '' :
#        print line
        record =  line.split(separator)
        if len(record) == numfields :
            record1 = [x.strip('\n').strip('"') for x in record ]
#        print record1
            accumulator.append(record1)
        else :
            print "Warning: separator problem: ", len(record), record
        line = f.readline()
        
    f.close()
    return accumulator

###############################################################
#
# new version of load_data

########################################
def increment_count(mapping, key) :

    if key in mapping.keys() :
        mapping[key] += 1
    else :
        mapping[key] = 0

######################################
# merg the k eccess filds in position from 1 to 1+k and resize the tuple:
# change the separator in the process

def resize(inlist, k , new_separator):

    assert k >= 0
    assert k <= len(inlist) -1
    new_field_one = new_separator.join(inlist[1:2+k])
    outlist = [inlist[0],] + [new_field_one,] + inlist[2+k:]
    return outlist

####################

def load_data (directory, filename, separator) :

    testexistencedirectory(directory)
    testexistencefile(directory,filename)

    print "Opening", directory, filename

    

    f = open(directory + '/' + filename)
    accumulator = []
    fields_counter = {}
    recovered = 0
    normalsize = 0
    linenumber = 0
    testprintnumber = 0


    line = f.readline()
    ll = line.split(separator)
    print "Header : ", len(ll), ll
    numfields = len(ll)
    line = f.readline()
    while line != '' :
        linenumber +=1
#        print line
        record =  line.split(separator)
        increment_count(fields_counter, len(record))
        delta = len(record) - numfields

        if delta == 0 :
            normalsize +=1
            record1 = [x.strip('\n').strip('"') for x in record ]
#        print record1
            accumulator.append(record1)
        elif delta > 0 :
#            print "Warning: separator problem: ", len(record), record
            newrecord = resize(record, delta , '_')
            assert len(newrecord) == numfields
            recovered += 1
            if testprintnumber < 10 :
                print "sample ", testprintnumber, newrecord
                testprintnumber += 1
            record1 = [x.strip('\n').strip('"') for x in newrecord ]
            accumulator.append(record1)
        else :
            print "Warning Too few seprators ", record

            
        line = f.readline()
        
    f.close()
    printmap(fields_counter, "distribution of filds number by separator :"+separator)
    print "normalsize ", normalsize, "recovered", recovered, "matching total", recovered+normalsize , linenumber

    return accumulator


####################################################

from file_parsing import stringnormalize2
        
def extract_drug_name_direction(s, drugdatatype) :

#    print s

    if drugdatatype == 'GEO' :

        ll = s.split(' ')
        direction = ll[-1]
        if  direction not in ['up', 'down']:
            print "Warning wrong direction lable", ll

        index = 0
        while ll[index] not in ['homo', 'rattus', 'mus', 'bos', 'sus', 'macaca', 'oncorhynchus', 'myzus']:
            index +=1
            if index > 6 :
                break   
        if index == 7 :
            print ll
            drugname = None
        else :
            drugname = '_'.join(ll[:index]).lower()
            drugname = stringnormalize2(drugname)

        return (drugname,direction)

    elif drugdatatype in ('DM', 'DM2') :

        ll = s.split('-')
        direction = ll[-1]
        if  direction not in ['up', 'dn']:
            print "Warning wrong direction lable", ll
            assert False
            direction = None
        else :
            if direction == 'dn' : # correction to have uniform lables.
                direction = 'down'
        lll =  s.split(' ')
        index = 0
        while lll[index] not in ['mg/kg', 'uM', 'ng/ml']:
            index +=1
            if index > len(lll) -1 :
                break   
        if index == len(lll) :
            print lll
            drugname = None
        else :
            drugname1 = '_'.join(lll[:index])
            drugname2 = drugname1.split('-')
            drugname3 = drugname2[:-1] # remove the dose
            drugname4 = '_'.join(drugname3)
            drugname5 = drugname4.split(' ')
            drugname =  '_'.join(drugname5).lower()
            drugname = stringnormalize2(drugname)

#        print 'checking : ' , s, (drugname,direction)
        return (drugname,direction)

    elif drugdatatype == 'CMAP' :
        ll = s.split('-')
        direction = ll[-1]
        if  direction not in ['up', 'dn']:
            print "Warning wrong direction lable", ll
            direction = None
        else :
            if direction == 'dn' : # correction to have uniform lables.
                direction = 'down'
        drugname = '_'.join(ll[:-2]).lower()
        drugname = stringnormalize2(drugname)
        return (drugname,direction)

    elif drugdatatype == 'L1000' :
        s1 = s.split(' ')
        s2 = ' '.join(s1[2:])
        ll = s2.split('-')
        direction = ll[-1]
        if  direction not in ['up', 'dn']:
            print "Warning wrong direction lable", ll
            direction = None
        else :
            if direction == 'dn' : # correction to have uniform lables.
                direction = 'down'
        l2 = ll[:-2]
        l3 = l2[1:]
        l4 = '-'.join(l3)
        drugname= stringnormalize2(l4)
        if drugname == '' :
            print "Warning : empty drug name : ", (drugname,direction), s1,s2, ll, l3
            assert False
#        print s, (drugname,direction)
        return (drugname,direction)

    else :
        print "Wrong drugdatatype : ", drugdatatype
        assert False

####################################
# check uniformity of direction

def unform_direction(ll) :

    direction = ll[0][2]
    for x in ll :
        if x[2] != direction :
            return False
    return True

###############################################
# score a list of records for counteraction drug-disease


def scoreonerecord(record, typescore, weights) :

    drugdirection = record[2]
    upcount = record[4]
    downcount = record[5]
    if typescore == 'deg_in_module' :
        drug_in_modue = record[6]
    elif typescore == 'hits_in_module':
        drug_in_modue = record[7]
    else :
        print "wrong typescore ", typescore
        assert False

    if weights not in ["size_x_deltadeg", "deltadeg"] :
        print "Wrong weights ", weights
        assert False

    sc = 0 

    if     drugdirection == 'down':
        if weights== "size_x_deltadeg":
            sc =  drug_in_modue * (upcount - downcount)
        else :
            sc = upcount - downcount
    elif   drugdirection == 'up':
        if weights== "size_x_deltadeg":
            sc = drug_in_modue * (downcount -  upcount)
        else :
            sc = downcount -  upcount
    else :
        print "format error ", record
        assert False

    return sc

#######################################

def score(ll, typescore, weights) :
    sc = 0
    for x in ll :
        sc += scoreonerecord(x, typescore, weights)

    return float(sc)/float(len(ll))
    
        
        
##############################################
# postiveonly= true if we report only drugs with postive correaaltion
# drugdatatyep in: GEO, DM

def direction_analysis(directory, filename, separator, drugdatatype, positiveonly, weights):

        
    dataarray = load_data(directory, filename, separator)              
    print "Number of records ", len(dataarray)
    ##for x in dataarray :
    ##    if len(x) != 7 :
    ##        print x

    ############################


    drug_module_map = {}
    drugnames = set()

    count_uniform = 0
    count_mixed = 0

    for x in dataarray :

        if not type(x)==list :
            print "Wrong data type, ", x
            continue
        if len(x) < 7 :
            print "Wrong data type, ", x
            continue
            
        res = extract_drug_name_direction(x[1], drugdatatype)
        module_id = int(x[0])
        module_size = int(x[2])
        disease_up = int(x[3])
        disease_down = int(x[4])
        drug_deg_in_module = int(x[5])
        drug_deg_hits = int(x[6])
        newrecord = (module_id, res[0], res[1], module_size, disease_up, disease_down, drug_deg_in_module, drug_deg_hits)

    # check if any module hd both up and down DEG for the disease..

        if  disease_up != 0 and disease_down != 0 :
    #        print newrecord
            count_mixed += 1
        else :
            count_uniform += 1

    # check if any pair (module_id, drug) has both  up and down drug genes       

        if (module_id, res[0]) not in   drug_module_map.keys() :        
            drug_module_map[(module_id, res[0])] = [newrecord]
        else :
            drug_module_map[(module_id, res[0])].append(newrecord)

        drugnames.add(res[0])

    print "Drug-module action mixed : ", count_mixed, "uniform : " , count_uniform

    count_same_dir = 0
    count_mixed_dir = 0
    for x in drug_module_map.keys() :
        if len(drug_module_map[x]) >  1  :
            if not unform_direction(drug_module_map[x]):
    #            print "mixed case ", drug_module_map[x]
                count_mixed_dir += 1
            else :
                count_same_dir += 1

    print "Drug-module action mixed : ", count_mixed_dir, "uniform : " , count_same_dir
                
                    

    print "Number of drugs " , len(drugnames)
    drugscore = {}
    drug_modules = {}
    for x in drugnames :
        drugscore[x] = 0
        drug_modules[x] = []
        
    # controllo direzinalita della drug e del disease.

    disease_up_drug_up =0
    disease_up_drug_down =0
    disease_down_drug_up =0
    disease_down_drug_down =0

    for x in drug_module_map.keys() :
        drugdirection = drug_module_map[x][0][2]
        drugname = x[1]
        if     drugdirection == 'down' and drug_module_map[x][0][4] > 0 : # disease up
            disease_up_drug_down += 1
        elif   drugdirection == 'down' and drug_module_map[x][0][5] > 0 : # disease down
            disease_down_drug_down +=1
        elif   drugdirection == 'up' and drug_module_map[x][0][4] > 0 : # disease up
            disease_up_drug_up   +=1     
        elif   drugdirection == 'up' and drug_module_map[x][0][5] > 0 : # disease down
            disease_down_drug_up += 1

    #    drugscore[drugname] +=  score(drug_module_map[x], 'hits_in_module', weights)  
        drugscore[drugname] +=  score(drug_module_map[x], 'deg_in_module', weights)
        drug_modules[drugname].append(x[0])

    print 'disease_up_drug_up = ' ,disease_up_drug_up
    print 'disease_up_drug_down = ' ,disease_up_drug_down
    print 'disease_down_drug_up = ' ,disease_down_drug_up
    print 'disease_down_drug_down = ' ,disease_down_drug_down
            
    ##########################################################################
    # refactor data by single drugs..


    for x in drugscore.keys() :
        print x, drugscore[x], len(drug_modules[x])

    #####################################################
        
    sortedbydrugscore = sorted([(value,key) for (key,value) in drugscore.items()], reverse=True)

    for x in sortedbydrugscore :
        print x, len(drug_modules[x[1]])

    if positiveonly == True :
        sortedbydrugscorepos = [x for x in  sortedbydrugscore if x[0] >= 0.0 ]      
        sortedbydrugscore = sortedbydrugscorepos

#    return [(key, value) for (value, key) in sortedbydrugscore ]
    return  (sortedbydrugscore, drug_module_map)      

################################################################################
# running test

##directory = '.'
###filename = 'Core&Peel-coexpr025marta-r1-nl10-d0.5-f1-j0.8_balf_GEO.csv'
##filename = 'Core&Peel-coexpr025marta-r1-nl10-d0.5-f1-j0.8_balf_GEO_noFiltering.csv'
##separator = ','
##
##direction_analysis(directory, filename, separator)


#########################################
from mapping_modulation_data import modulation_data
from newdataanalysis4merge import computeinvranstst3
#from  code_for_drugnames_matching  import  filterbycovid19clinicaltrial


#rec = modulation_data[('pbmc', 'c&pd05j08', 'GEO', 'nofilter')
#rec = modulation_data[('pbmc', 'c&pd07j08', 'GEO', 'nofilter')]
#rec = modulation_data[('pbmc', 'c&pd05j08', 'GEO', 'filter')]
#rec = modulation_data[('pbmc', 'c&pd07j08', 'GEO', 'filter')]
#rec = modulation_data[('pbmc', 'MD', 'GEO', 'nofilter')]


def drug_modulation_single(conf, fdadrugsonlyflag, positiveonly, weights):


    rec = modulation_data[conf]
                          
    directory = rec[0]
    filename = rec[1]
    
    if len(rec) == 2 :
        separator = ',' # default separator
    elif len(rec) == 3 :
        separator = rec[2]
    else :
        print "Check: length meta-data record. should be 2 or 3 fields"
        assert False
        
    gedatastring = conf[0]

    (sortedbydrugscore, drug_module_map) = direction_analysis(directory, filename, separator, conf[2], positiveonly, weights)

    if fdadrugsonlyflag == True :

# old fda call        
##        fda = read_file('../FDA_approved_drugs_filtered_unique.txt')
##        fda2 = [s.lower() for s in fda]
##        listsdrugs = [x[-1] for x in sortedbydrugscore]
##        drugmap = findmatchingsecondlist(listsdrugs , fda2, '.', 'fda_filter_dump.txt')
# new fda call
        listsdrugs = [x[-1] for x in sortedbydrugscore]
        drugmap= filterbyfdaapproveddrugs(listsdrugs, conf)

#        sortedbydrugscore = [x for x in  sortedbydrugscore if x[-1] in drugmap.keys()]
        sortedbydrugscore = [x for x in  sortedbydrugscore if x[-1] in drugmap]

        #riusiamo le matched fd drugs per filtrare la drug_module_map
        drug_module_map_new = {}

        for key in drug_module_map.keys() :
#            if key[1] in drugmap.keys() :
            if key[1] in drugmap :
                drug_module_map_new[key] = drug_module_map[key]
        
        drug_module_map =  drug_module_map_new


    drugnames = [x[-1] for x in sortedbydrugscore] #drug name in last postion

    if gedatastring in ('cells', 'pbmc', 'balf') :
        ct_drugnames = filterbycovid19clinicaltrial(drugnames, conf)
    elif gedatastring == 'asth' :
        ct_drugnames = filterbyasthmadata(drugnames, conf)
    elif gedatastring == 'arth' :
        ct_drugnames = filterbyarthritisdata(drugnames, conf)
    elif gedatastring == 'crc' :
        ct_drugnames = filterbycolorectcandata(drugnames, conf)
    elif gedatastring == 'prc' :
        ct_drugnames = filterbyprostcandata(drugnames, conf)
    else :
        print "Wrong data code", gedatastring
        assert False


#    ct_drugnames = filterbycovid19clinicaltrial(drugnames)



    initiallist= sortedbydrugscore
    trialdruglist= ct_drugnames
    #algstr= 'c&pd05j08'
    #algstr= 'c&pd07j08'
    algstr= conf[1]
    gedatastring= conf[0]

    (algstrc, suminvrserankc, precisionat20c, accumc, rankedlistc, noannotationdrugs) = computeinvranstst3(initiallist, trialdruglist, algstr, gedatastring, '')

    printlist(rankedlistc,  algstr + ' ' + gedatastring)
            
    print "++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
    printlist(noannotationdrugs, "List of drugs without annotation for " + gedatastring)
    print "++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
    print (algstrc, suminvrserankc, precisionat20c, accumc)

    return (sortedbydrugscore, drug_module_map, ct_drugnames)

###############################################################################
# doing single runs or merge of multiple runs.


from testingrra import multimergeranking
from random_drug_scoring_model import compute_zscores_pval


def drug_modulation_single_runs(confs, fdadrugsonlyflag, positiveonly, reuseruns, combinations, weights):

    listoflists = []
    listofmaps = []
    settrialdrugs = set()
    lablestr = ''
    totaltrialdrugsset = set([])
#    runsdumpmap = uploadrunsmap()
    
    for conf in confs :
        print "**************************************************************************"
        lable1 = ','.join(conf + (weights, str(fdadrugsonlyflag), str(positiveonly)))
        lable = '(' + lable1 + ')'
        assert type(lable) == str
        newdata = False
        
        if reuseruns == True :
            print "Uploading reused runs form dump data: ", lable+'.txt'
            dumpres  = uploadrunsmap(lable)
            if dumpres != None :
                (res, drug_module_map) = dumpres
                gedatastring = conf[0]
                drugnames = [x[-1] for x in res] #drug name in last postion

                if gedatastring in ('cells', 'pbmc', 'balf') :
                    ct_drugnames = filterbycovid19clinicaltrial(drugnames, conf)
                elif gedatastring == 'asth' :
                    ct_drugnames = filterbyasthmadata(drugnames, conf)
                elif gedatastring == 'arth' :
                    ct_drugnames = filterbyarthritisdata(drugnames, conf)
                elif gedatastring == 'crc' :
                    ct_drugnames = filterbycolorectcandata(drugnames, conf)
                elif gedatastring == 'prc' :
                    ct_drugnames = filterbyprostcandata(drugnames, conf)
                else :
                    print "Wrong data code", gedatastring
                    assert False
                
            else :
                (res, drug_module_map, ct_drugnames)= drug_modulation_single(conf, fdadrugsonlyflag, positiveonly, weights)
                newdata = True
        else :                
            (res, drug_module_map, ct_drugnames) = drug_modulation_single(conf, fdadrugsonlyflag, positiveonly, weights)
            newdata = True

        testvectormap1 = dict([(x[1],x[0]) for x in res ])
        listoflists.append(testvectormap1)
        listofmaps.append(drug_module_map)
        lablestr = lablestr + str(conf)
        gedatastring = conf[0]
        drugnames = [x[-1] for x in res] #drug name in last postion

##        if gedatastring in ('cells', 'pbmc', 'balf') :
##            ct_drugnames = filterbycovid19clinicaltrial(drugnames, conf)
##        elif gedatastring == 'asth' :
##            ct_drugnames = filterbyasthmadata(drugnames, conf)
##        elif gedatastring == 'arth' :
##            ct_drugnames = filterbyarthritisdata(drugnames, conf)
##        elif gedatastring == 'crc' :
##            ct_drugnames = filterbycolorectcandata(drugnames, conf)
##        elif gedatastring == 'prc' :
##            ct_drugnames = filterbyprostcandata(drugnames, conf)
##        else :
##            print "Wrong data code", gedatastring
##            assert False

        totaltrialdrugsset.update(set(ct_drugnames ))

#        runsdumpmap = updaterunsmap((res,drug_module_map), runsdumpmap, conf, weights, fdadrugsonlyflag, positiveonly)
        if newdata == True :
            print "Dumping runs to dump data file: ", lable+'.txt'
            dumprunsmap(lable, (res,drug_module_map))
        else :
            print "No Dumping of run results"
        
        print "**************************************************************************"

#    dumprunsmap(runsdumpmap)

# handles ranked lsit merging via the Leskovec procedure

#    if len(confs) > 1 :
    if len(confs) > 0 : # execute it anyway
        print "Merging  ", confs
        nconfs=len(listoflists)
        totaltrialdrugs = list(totaltrialdrugsset)
        (totallist, mergedvector, outmatrix2) = multimergeranking(listoflists)
        
        inputoutputmatrix2 = [outmatrix2[x] + [mergedvector[x], totallist[x]] for x in range(len(totallist))]
        lexsorting12 = sorted(inputoutputmatrix2, reverse = True, key=lambda tup: sum(tup[:nconfs]) )
        lexsorting22 = sorted(lexsorting12, key=lambda tup: tup[nconfs])
        printlist( lexsorting22  , "inputoutputmatrix")
        # assumes a single drug data set
        (algstrc, suminvrserankc, precisionat20c, accumc, rankedlistc, noannotationdrugs) = computeinvranstst3(lexsorting22, totaltrialdrugs,  lablestr, gedatastring, conf[2] )

# checking conditions for z-score computation
        setdrugs = set()
        setgedata = set()
        zscoreflag = False
        for conf in confs :
            setdrugs.add(conf[2])
            setgedata.add(conf[0])
        if setgedata <= set(['balf', 'pbmc', 'cells', 'taguchi']) :
            setgedata = set(['covid19',])
        if len(setdrugs) == 1 :
            if len(setgedata) == 1 :
                print setdrugs, setgedata
                ((z_prec,p_prec),(z_rhr,p_rhr)) = compute_zscores_pval(list(setdrugs)[0], list(setgedata)[0], fdadrugsonlyflag, precisionat20c, suminvrserankc)
                zscoreflag = True
            else :
                print "Unmatched types"
        else :
            print "Unmatched types"







        print "++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
        printlist(rankedlistc,  lablestr )        
        print "++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
        printlist(noannotationdrugs, "List of drugs without annotation for " + gedatastring)
        print "++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
        print (algstrc, suminvrserankc, precisionat20c, accumc)

        if zscoreflag :
            print  '@@@@', (lablestr, suminvrserankc, (z_rhr,p_rhr), precisionat20c ,(z_prec,p_prec) , accumc)
        else :
            print  '@@@@', (lablestr, suminvrserankc,  precisionat20c  , accumc)


# handles the module covering by drugs of several graphs. 
    if combinations == True :
        print "Begin detection of covering drung combinations"
        finddrugcoverofmultigraphs(listofmaps)
        





        

##############################################################
        
#drug_modulation_single(('pbmc', 'cpd05j08', 'GEO', 'nofilter'))
#drug_modulation_single(('pbmc', 'cpd05j08', 'GEO', 'filter'))
#drug_modulation_single(('pbmc', 'cpd07j08', 'GEO', 'filter'))
#drug_modulation_single(('pbmc', 'cpd07j08', 'GEO', 'nofilter'))
          
#drug_modulation_single(('pbmc', 'MD', 'GEO', 'nofilter'))
#drug_modulation_single(('pbmc', 'MD', 'GEO', 'filter'))
