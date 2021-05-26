# new version of datanaalysis4meerge with the minimal code required for running he new drugranking command.
# beginning on 2020-11-08

import os
import math

##################################################
# import generic utilities

from generic_util import printmap, printlist, minuslog10
  
###########################################################
# importing the main metatadata mapping from a sparate file
from metadata_file import tablemap

###########################
# import drug annotations

from literaturedb_covid19 import getannotation_covid19, updatecounters
from literaturedb_asth    import getannotation_asth
from literaturedb_arth    import getannotation_arth
from literaturedb_crc     import getannotation_crc
from literaturedb_prc     import getannotation_prc

##############################################
# import file handling utils

from file_handling_util import testexistencedirectory, testexistencefile

##############################################
# import parsing utils

from file_parsing import stringnormalize2 , stringnormalize, converttofloat, parsefile, newparsefile

#######################################################
# code for drug name matching across databaases

#from  code_for_drugnames_matching  import findmatchingsecondlist
from  code_for_drugnames_matching  import  read_file
from random_drug_scoring_model import filterbyfdaapproveddrugs, filterbycovid19clinicaltrial, filterbyarthritisdata, filterbyasthmadata, filterbycolorectcandata, filterbyprostcandata

##################################################
# dumping lists of drugs

from codefordumping import putdatatodump, getdatafromdump

# not needed we uplaod rhe data in teh aux file 
#allfilters = getdatafromdump('.', , 'runspositivelistsdump.txt')

###########################################################
# find unique drug an input list, returns a map 
# no external dependencies

def uniquedrug(inlist) :

    print "Reboving duplicates. Our format record: (index, drug, pvalue)"

    outdir = {}
    dupl = 0
    for x in inlist :
        key = x[1]
        if key in outdir.keys() :
            dupl += 1
            minpval = min(x[2], outdir[key][2])
            outdir[key][2] = minpval
        else :
            outdir[key] = x
    print "number of duplications, ", dupl
    return outdir

   



##################################################################
# produces  ranking of one data set/alg
# external dependencies: parsefile, read_file, findmatchingsecondlist, printmap

def oneexperimentnewmap(algindex, gedatastring, drugstring, maintable, fdadrugsonlyflag, drugfilterlist):

    # uplaod the algorithmic ranking of drugs
    fileformat = maintable[algindex][5]
    algname = maintable[algindex][0]
    print "+++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
    print "Processing ", maintable[algindex][0], fileformat

    indirectory1= maintable[algindex][1]
    infilename1 = maintable[algindex][2]
## old parsing code invocation to be changed
##    if algname != 'taguchi' and drugstring != 'L1000': 
##        a1 = parsefile(indirectory1, infilename1, 'original', fileformat)
##    elif algname != 'taguchi' and drugstring == 'L1000':
##        a1 = parsefile(indirectory1, infilename1, 'original2', fileformat)
##    elif  gedatastring in ['balf', 'cells', 'pbmc'] and drugstring in ['L1000up', 'L1000down', 'L1000updown'] :
##        a1 = parsefile(indirectory1, infilename1, drugstring, 'covid19')
##    else :
##       a1 = parsefile(indirectory1, infilename1, 'taguchi', fileformat)

## new file parsing invocation
    a1 = newparsefile(indirectory1, infilename1, fileformat)
    
    b1 = uniquedrug(a1)
    if fdadrugsonlyflag :
# old call to fda filter
##        fda = read_file('../FDA_approved_drugs_filtered_unique.txt')
##
### old normalization        
###        fda2 = [s.lower() for s in fda]
### new normalization
##        fda1 = [ stringnormalize2(y).lower() for y in fda]
##        fda2 = list(set(fda1))
##        
##        listdm2 = b1.keys()    
##        drugmap = findmatchingsecondlist(listdm2 , fda2, './running-dumps', 'fda_filter_dump.txt')
##        print "###############"
##        printmap( drugmap, "After fda filtering")
        
# new call to fda filter
        listdm2 = b1.keys() 
        drugmap= filterbyfdaapproveddrugs(listdm2, (algindex, gedatastring, drugstring))
        
        b2 = {}
        for key in b1.keys() :
#            if key in drugmap.keys() :
            if key in drugmap :
                b2[key] = b1[key]
        b1 = b2

    if drugfilterlist != [] :
        # ricomincaire da qui a scrivee il codice
        b2 = {}
        for key in b1.keys() :
            if key in drugfilterlist :
                b2[key] = b1[key]
        b1 = b2
         
    
    print "Ranking from algorithm, after duplicate removal num records: ", len(b1)
    printmap(b1, "Map of drugs enriched in the active network, after duplicate removal")
    return b1



###################################################################
# interface with literature db of 5 diseases

def getannotation(drugname, gedatastring):

    if gedatastring in ('cells', 'pbmc', 'balf', 'taguchi') :
        return getannotation_covid19(drugname)
       
    elif gedatastring == 'asth' :
        return getannotation_asth(drugname)
    elif gedatastring == 'arth' :
        return getannotation_arth(drugname)
    elif gedatastring == 'crc' :
        return getannotation_crc(drugname)
    elif gedatastring == 'prc' :
        return getannotation_prc(drugname)
    else :
        print "Wrong data code", gedatastring
        assert False
    





###############################################################
# evaluation function

###########################################################
# take as input a lsit of trial drugs and an inital mapping (to be reordered)
# drug name as last element of a list.
# external dependencies: getannotation, updatecounters,
#initiallist, is a lsit of records (each ahs the drug name in last position)
#trialdruglist is is a list of strings(drugnames)
#algstr is a string
#gedatastring is a string


def computeinvranstst3(initiallist, trialdruglist, algstr, gedatastring, drugstring):

    print "***********************************************"
##    (rankedinitial, rankedinitiallist) = reranking(initial)
##
##    printmap(rankedinitial, "Initial drug-to-its-record map in computation of mean inverse rank")
##    printlist(rankedinitiallist, "Initial ranked list in computation of mean inverse rank")     

    suminvrserank = 0
    precisionat20 = 0
    rankedlist = []
    accum = [0,0,0,0]
    noannotationdrugs = []
    for x in range(len(initiallist)) :
#        drugname = initiallist[x][3]
        drugname = initiallist[x][-1] # drug name in last postion in the record

        if x <= 19 :
            newdata = getannotation(drugname, gedatastring)
#            accum = updatecounters(accum, newdata[:4])
            accum = updatecounters(accum, newdata)
            if newdata == None :
                noannotationdrugs.append(drugname)
 
                    
        if drugname in trialdruglist :
            print x, drugname, 1.0/float(x+1)
            rankedlist.append(( x, drugname, 1.0/float(x+1)))
            suminvrserank += 1.0/float(x+1)
            if x <= 19 :
                precisionat20 += 1
        else :
            print x,  drugname, "no trial "
            rankedlist.append((x,  drugname, "no trial "))

    print "suminvrserank (RHR), prec-at-20 : ", algstr, suminvrserank, precisionat20
    return (algstr, suminvrserank, precisionat20, accum, rankedlist, noannotationdrugs)







############################################################
# main exported function



# uses the kmeging procedure
# external dependencies: tablemap, multimergeranking

from testingrra import multimergeranking
from random_drug_scoring_model import compute_zscores_pval

def mergemanyrunsonalldrugs(confs, fdadrugsonlyflag, drugfilterlist, mode):

    
    listoflists = []
    settrialdrugs = set()
    lablestr = ''
    for conf in confs :
        algindex = conf[2]
        gedatastring = conf[0]
        drugstring =  conf[1]
        maintable = tablemap[(gedatastring,drugstring)]
        algstring1 =  maintable[algindex][0]
        if mode in ['filteronly', 'filter_merge'] :
            map1 = oneexperimentnewmap(algindex, gedatastring, drugstring, maintable, fdadrugsonlyflag, drugfilterlist[0])
        elif mode in ['nofilter', 'mergeonly'] :
            map1 = oneexperimentnewmap(algindex, gedatastring, drugstring, maintable, fdadrugsonlyflag, [])
        else :
            print "Wrong mode", mode
            assert False
        testvectormap1 = dict([  (x, minuslog10(map1[x][2]))  for x in map1.keys()])
        print "testvector1", conf, testvectormap1
        listoflists.append(testvectormap1)
# load the correct golden standard for performance evaluation
#        trialdrugs1 = uploadtrialdrugs(map1)
        if gedatastring in ('cells', 'pbmc', 'balf', 'taguchi') :
            trialdrugs1 = filterbycovid19clinicaltrial(map1, conf)
        elif gedatastring == 'asth' :
            trialdrugs1 = filterbyasthmadata(map1, conf)
        elif gedatastring == 'arth' :
            trialdrugs1 = filterbyarthritisdata(map1, conf)
        elif gedatastring == 'crc' :
            trialdrugs1 = filterbycolorectcandata(map1, conf)
        elif gedatastring == 'prc' :
            trialdrugs1 = filterbyprostcandata(map1, conf)
        else :
            print "Wrong data code", gedatastring
            assert False
        
        settrialdrugs.update(set(trialdrugs1))
        lablestr = lablestr + str(conf)

    if mode in ['nofilter', 'filteronly']:
        totaltrialdrugs = list(settrialdrugs)
        nconfs=len(listoflists)
        (totallist, mergedvector, outmatrix2) = multimergeranking(listoflists)
    elif mode in ['mergeonly', 'filter_merge'] :
        listoflists1 = listoflists + drugfilterlist[1]
        nconfs = len(listoflists1)
        totaltrialdrugs = list(settrialdrugs)
# convert to format for rra procedure
        filtermaps = []
        for item in drugfilterlist[1] :
            testvectormap1 = dict([(x[1],x[0]) for x in item ])
            filtermaps.append(testvectormap1)
        listoflists1 = listoflists + filtermaps
        lablestr = lablestr + drugfilterlist[2]
        (totallist, mergedvector, outmatrix2) = multimergeranking(listoflists1)
    else :
        print "Wrong mode", mode
        assert False        

##    inputoutputmatrix2 = [(outmatrix2[x][0],outmatrix2[x][1], mergedvector[x], totallist[x]) for x in range(len(totallist))]
##    lexsorting12 = sorted(inputoutputmatrix2, reverse = True, key=lambda tup: tup[0]+tup[1])
##    lexsorting22 = sorted(lexsorting12, key=lambda tup: tup[2])
##    printlist( lexsorting22  , "inputoutputmatrix")

    inputoutputmatrix2 = [outmatrix2[x] + [mergedvector[x], totallist[x]] for x in range(len(totallist))]
    lexsorting12 = sorted(inputoutputmatrix2, reverse = True, key=lambda tup: sum(tup[:nconfs]) )
    lexsorting22 = sorted(lexsorting12, key=lambda tup: tup[nconfs])
    printlist( lexsorting22  , "inputoutputmatrix")

    (algstrc, suminvrserankc, precisionat20c, accumc, rankedlistc, noannotationdrugs) = computeinvranstst3(lexsorting22, totaltrialdrugs,  lablestr, gedatastring, drugstring )

# checking conditions for z-score computation
    setdrugs = set()
    setgedata = set()
    zscoreflag = False
    for conf in confs :
        setdrugs.add(conf[1])
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
#    printlist(rankedlista, algstring1)
#    print "++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
#    printlist(rankedlistb, algstring2)    
#    print "++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
    printlist(rankedlistc,  lablestr )
        
    print "++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
    printlist(noannotationdrugs, "List of drugs without annotation for " + gedatastring)
    print "++++++++++++++++++++++++++++++++++++++++++++++++++++++++"

    
#    print (algstra, suminvrseranka, precisionat20a, accuma)
#    print (algstrb, suminvrserankb, precisionat20b, accumb)
    if zscoreflag :
        print  '@@@@', (algstrc, suminvrserankc, (z_rhr,p_rhr), precisionat20c ,(z_prec,p_prec) , accumc)
    else :
        print  '@@@@', (algstrc, suminvrserankc,  precisionat20c  , accumc)
# compute z-score, p-value for merged data.. 
    
