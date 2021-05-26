# -*- coding: cp1252 -*-
# This codes take all files in a specified directory that have a epcifed prefix
# and extract selected rows with a specified prefix.
# we donot do the comelex paseing of the file_summary.py version that was too
# linekd to a specific formatting of he lines.

import os
import time
import datetime

from file_handling_util import testexistencedirectory, testexistencefile, testexistenceanscreatedirectory
from generic_util import printmap, printlist


##########################################
# get file properti such as time of creation, in the script.


def listfilestatus(path):

    filenames = []
#    path = os.path.join("C:\\","temp")
    for filename in os.listdir(path):
        info = os.stat(os.path.join(path,filename))
    #    print(filename, info.st_mtime)
        mtime = info.st_mtime
    #    print(filename, info)
        timestamp_str = datetime.datetime.fromtimestamp(mtime).strftime('%Y-%m-%d-%H:%M')
        print filename, timestamp_str
        filenames.append(filename)
    return filenames

###################################################
# filter filenames by a prefix match. or suffix 

def prefixmatch(namelist, nameprefix) :

    outlist = []
    for x in namelist:
        if x.startswith(nameprefix):
            outlist.append(x)
    return outlist


def suffixmatch(namelist, namesuffix) :

    outlist = []
    for x in namelist:
        if x.endswith(namesuffix):
            outlist.append(x)
    return outlist


########################################################
from ast import literal_eval

def parseforevaluationdata1(path,  namelist, lineprefix):

    out = []
    out2 = []
    for filename in namelist:
        f = open(os.path.join(path,filename), 'r')    
        ss = f.readline()
    #    print ss
        while ss != '' :
            if ss.startswith(lineprefix) :
                out.append(ss.strip())
                out2.append(literal_eval(ss[5:]))
            ss = f.readline()
        f.close()
    printlist(out, 'summary listing')
    out3 = sorted(out2, key=lambda tup: tup[2][0],  reverse=True)
    printlist(out3, 'summary objects sorted by rhr z-score')
    return out3

##############################################################

def rawparseforevaluationdata1(path,  namelist, lineprefix):

    out = []
    for filename in namelist:
        f = open(os.path.join(path,filename), 'r')    
        ss = f.readline()
    #    print ss
        while ss != '' :
            if ss.startswith(lineprefix) :
                out.append(ss.strip())
            ss = f.readline()
        f.close()
    printlist(out, 'summary objects')
    return out




##############################################

def dumpto_csv_file(inlist , path, filename, separator) :

    f = open(os.path.join(path,filename), 'w')
    
    print "****************** csv cvomaptible ********************"
    header = "data and alg ; rhr ; (zscore, pval) ; prec@20 ; (zscore, pval) ; notes"
    print header
    f.write(header+'\n')
    for x in inlist :
        x1 = [str(y) for y in x]
        xx = separator.join(x1)
        print xx
        f.write(xx+'\n')
    f.close()
        
    


##############################################################
# testing

def rundataextraction(path, fileprefix, lineprefix, outname, outflag, separator):
    
    l1 = listfilestatus(path)
    l2 = prefixmatch(l1,  fileprefix)
    if outflag:
        l3 = parseforevaluationdata1(path,  l2, lineprefix)
        dumpto_csv_file(l3 , path, outname, separator)
    else :
        rawparseforevaluationdata1(path,  l2, lineprefix)
        

###############################################
# run for testing..

#rundataextraction('../tests-2021-01-13', 'result', '@@@@')

# only arth data
##sel = '@@@@ ("' + "('arth'"
##rundataextraction('../tests-2021-01-13', 'result', sel, 'arth-data.csv')

##sel = '@@@@ ("' + "('crc'"
##rundataextraction('../tests-2021-01-13', 'result', sel, 'crc-data.csv')

##sel = '@@@@ ("' + "('prc'"
##rundataextraction('../tests-2021-01-13', 'result', sel, 'prc-data.csv')

##sel = '@@@@ ("' + "('asth'"

##sel = '@@@@ ("' + "('balf'"
##sel = '@@@@ ("' + "('pbmc'"
##sel = '@@@@ ("' + "('cells'"


######################################################


##sel = '@@@@ ("' + "('arth'"
##rundataextraction('.', 'results', sel, 'arth-data-fdaonly-nopos-pvalue-2021-01-15.csv')

######################################################

def parseforlogdata1(path,  namelist, lineprefix):

    out = []
    out2 = []
    for filename in namelist:
        f = open(os.path.join(path,filename), 'r')    
        ss = f.readline()
    #    print ss
        while ss != '' :
            if ss.startswith(lineprefix) :
                out.append(ss.strip())
#                out2.append(literal_eval(ss[5:]))
            ss = f.readline()
        f.close()
    printlist(out, 'summary listing')
#    out3 = sorted(out2, key=lambda tup: tup[2][0],  reverse=True)
#    printlist(out3, 'summary objects sorted by rhr z-score')
    return out



def runlogextraction(path, fileprefix, lineprefix):
    
    l1 = listfilestatus(path)
    l2 = prefixmatch(l1,  fileprefix)
    out = parseforlogdata1(path,  l2, lineprefix)
    uniquepairs = set()
    for x in out:
        xx = x.split('(')
        uniquepairs.add('('+xx[1])
    uniquelist = list(uniquepairs)
    printlist(uniquelist, "Unique pairs")
    print '***************************'
    for x in uniquelist :
        print x, ','

#############################################################################################
#run
# code to extract lines:
# "@@@ Drug Lacking certigication or exception",..
# generated by dìfunction findmatchingsecondlist  
#runlogextraction('.',  'results', '@@@ ')

#runlogextraction('./modulation-asthma-results-score-fdaonly-posonly',  'test', "@@@ ") # 2021-01-30 checking the log extraction tool


############################################################################################
# code to extract final results from log files.
# arthritis single tests

#rundataextraction('./modulation-asthma-results-score-fdaonly-posonly', 'test', "("('" , 'pippo', False)

#rundataextraction('./modulation-arthritis-results-score-fdaonly-posonly', 'test', "('" , 'pippo', False)
#rundataextraction('./modulation-arthritis-results-score-nofda-posonly', 'test', "('" , 'pippo', False)
#rundataextraction('./modulation-arthritis-results-pval-fdaonly-posonly', 'test', "('" , 'pippo', False)
#rundataextraction('./modulation-arthritis-results-pval-nofda-posonly', 'test', "('" , 'pippo', False)
#rundataextraction('./modulation-arthritis-results-pval-nofda-allposonly', 'test', "('" , 'pippo', False)
#rundataextraction('./modulation-arthritis-results-pval-fdaonly-allposonly', 'test', "('" , 'pippo', False)
#rundataextraction('./modulation-arthritis-results-pval-nofda-nopos', 'test', "('" , 'pippo', False)
#rundataextraction('./modulation-arthritis-results-pval-fdaonly-nopos', 'test', "('" , 'pippo', False)

#merging
#rundataextraction('./modulation-arthritis-results-fdaonly-posonly', 'merge', "('" , None, False)
#rundataextraction('./modulation-arthritis-results-nofda-posonly', 'merge', "('" , None, False)
#rundataextraction('./modulation-arthritis-results-pval-nofda-allposonly', 'merge', "('" , None, False)
#rundataextraction('./modulation-arthritis-results-pval-fdaonly-nopos', 'merge', "('" , 'pippo', False)
#rundataextraction('./modulation-arthritis-results-pval-nofda-posonly', 'merge', "('" , None, False)
#rundataextraction('./modulation-arthritis-results-pval-fdaonly-allposonly', 'merge', "('" , None, False)


# generate output csv faile

sel = '@@@@ ("'
# single tests
#rundataextraction('./modulation-asthma-results-score-fdaonly-posonly', 'test', sel , None, False)
#rundataextraction('./modulation-asthma-results-score-fdaonly-posonly', 'test', sel , 'asth-data-fdaonly-pos-score-2021-01-31.csv', True)

#rundataextraction('./modulation-arthritis-results-score-fdaonly-posonly', 'test', sel , None, False)
#rundataextraction('./modulation-arthritis-results-score-fdaonly-posonly', 'test', sel , 'arth-data-fdaonly-pos-score-2021-02-01.csv', True)
#rundataextraction('./modulation-arthritis-results-score-nofda-posonly', 'test', sel , None, False)
#rundataextraction('./modulation-arthritis-results-score-nofda-posonly', 'test', sel , 'arth-data-nofda-pos-score-2021-02-02.csv', True)

#rundataextraction('./modulation-arthritis-results-pval-fdaonly-nopos', 'test', sel , None, False)
#rundataextraction('./modulation-arthritis-results-pval-fdaonly-nopos', 'test', sel , 'arth-data-fdaonly-nopos-pval-2021-02-03.csv', True)
#rundataextraction('./modulation-arthritis-results-pval-fdaonly-allposonly', 'test', sel , None, False)
#rundataextraction('./modulation-arthritis-results-pval-fdaonly-allposonly', 'test', sel , 'arth-data-fdaonly-allpos-pval-2021-02-02.csv', True)
#rundataextraction('./modulation-arthritis-results-pval-fdaonly-posonly', 'test', sel , None, False)
#rundataextraction('./modulation-arthritis-results-pval-fdaonly-posonly', 'test', sel , 'arth-data-fdaonly-pos-pval-2021-02-02.csv', True)

#rundataextraction('./modulation-arthritis-results-pval-nofda-posonly', 'test', sel , None, False)
#rundataextraction('./modulation-arthritis-results-pval-nofda-posonly', 'test', sel , 'arth-data-nofda-pos-pval-2021-02-02.csv', True)
#rundataextraction('./modulation-arthritis-results-pval-nofda-allposonly', 'test', sel , None, False)
#rundataextraction('./modulation-arthritis-results-pval-nofda-allposonly', 'test', sel , 'arth-data-nofda-allpos-pval-2021-02-02.csv', True)
#rundataextraction('./modulation-arthritis-results-pval-nofda-nopos', 'test', sel , None, False)
#rundataextraction('./modulation-arthritis-results-pval-nofda-nopos', 'test', sel , 'arth-data-nofda-nopos-pval-2021-02-02.csv', True)





# merge
#rundataextraction('./modulation-arthritis-results-score-fdaonly-posonly', 'merge', sel , None, False)
#rundataextraction('./modulation-arthritis-results-score-fdaonly-posonly', 'merge', sel , 'arth-data-fdaonly-pos-score-merge-2021-02-02.csv', True)
#rundataextraction('./modulation-arthritis-results-score-nofda-posonly', 'merge', sel , None, False)
#rundataextraction('./modulation-arthritis-results-score-nofda-posonly', 'merge', sel , 'arth-data-nofda-pos-score-merge-2021-02-02.csv', True)
#rundataextraction('./modulation-arthritis-results-pval-nofda-allposonly', 'merge', sel , None, False)
#rundataextraction('./modulation-arthritis-results-pval-nofda-allposonly', 'merge', sel , 'arth-data-nofda-allpos-pval-merge-2021-02-03.csv', True)
#rundataextraction('./modulation-arthritis-results-pval-fdaonly-nopos', 'merge', sel , None, False)
#rundataextraction('./modulation-arthritis-results-pval-fdaonly-nopos', 'merge', sel , 'arth-data-fdaonly-nopos-pval-merge-2021-02-03.csv', True)
#rundataextraction('./modulation-arthritis-results-pval-nofda-posonly', 'merge', sel , None, False)
#rundataextraction('./modulation-arthritis-results-pval-nofda-posonly', 'merge', sel , 'arth-data-nofda-pos-pval-mege-2021-02-02.csv', True)
#rundataextraction('./modulation-arthritis-results-pval-fdaonly-allposonly', 'merge', sel , None, False)
#rundataextraction('./modulation-arthritis-results-pval-fdaonly-allposonly', 'merge', sel , 'arth-data-fdaonly-allpos-pval-mege-2021-02-03.csv', True)



###########################################
# automatic generation of directoy stucture x data

namesdatasets = [
    'covid19-pbmc',
    'covid19-balf',
    'covid19-cells',
    'prostate-cancer',
    'colorectal-cancer',
##    'asthma',
##    'arthritis'
    ]
namesoptions = [
                 'score-fdaonly-posonly',
                 'score-nofda-posonly',
                 'pval-nofda-allposonly',
                 'pval-nofda-posonly',
                 'pval-nofda-nopos',
                 'pval-fdaonly-allposonly',
                 'pval-fdaonly-posonly',
                 'pval-fdaonly-nopos',
                 ]
                 
def generatedirectorystucture(namesds, namesopt) :

    accum = []
    for x in namesds:
        for y in namesopt:
            newdirectoryname = 'modulation-' + x+ '-results-' + y 
            path = os.path.join('.',newdirectoryname)
            testexistenceanscreatedirectory(path)
            accum.append(path)

    print accum
    

# run
#generatedirectorystucture(['pippo'],['pluto'])
# ready to genrate all directories for holding modulation data
#generatedirectorystucture(namesdatasets, namesoptions)

# asthma single tests
#rundataextraction('./modulation-asthma-results-score-fdaonly-posonly', 'test-filter-asth-2021-02-11', sel , None, False)
#rundataextraction('./modulation-asthma-results-score-fdaonly-posonly', 'test-filter-asth-2021-02-11', sel , 'asth-data-fdaonly-pos-score-2021-02-11.csv', True)
#rundataextraction('./modulation-asthma-results-score-nofda-posonly', 'test', sel , None, False)
#rundataextraction('./modulation-asthma-results-score-nofda-posonly', 'test', sel , 'asth-data-nofda-pos-score-2021-02-12.csv', True)

#rundataextraction('./modulation-asthma-results-pval-fdaonly-posonly', 'test', sel , None, False)
#rundataextraction('./modulation-asthma-results-pval-fdaonly-posonly', 'test', sel , 'asth-data-fdaonly-pos-pval-2021-02-11.csv', True)
#rundataextraction('./modulation-asthma-results-pval-fdaonly-allposonly', 'test', sel , None, False)
#rundataextraction('./modulation-asthma-results-pval-fdaonly-allposonly', 'test', sel , 'asth-data-fdaonly-allpos-pval-2021-02-12.csv', True)
#rundataextraction('./modulation-asthma-results-pval-fdaonly-nopos', 'test', sel , None, False)
#rundataextraction('./modulation-asthma-results-pval-fdaonly-nopos', 'test', sel , 'asth-data-fdaonly-nopos-pval-2021-02-12.csv', True)

#rundataextraction('./modulation-asthma-results-pval-nofda-posonly', 'test', sel , None, False)
#rundataextraction('./modulation-asthma-results-pval-nofda-posonly', 'test', sel , 'asth-data-nofda-pos-pval-2021-02-11.csv', True)
#rundataextraction('./modulation-asthma-results-pval-nofda-nopos', 'test', sel , None, False)
#rundataextraction('./modulation-asthma-results-pval-nofda-nopos', 'test', sel , 'asth-data-nofda-nopos-pval-2021-02-11.csv', True)
#rundataextraction('./modulation-asthma-results-pval-nofda-allposonly', 'test', sel , None, False)
#rundataextraction('./modulation-asthma-results-pval-nofda-allposonly', 'test', sel , 'asth-data-nofda-allpos-pval-2021-02-12.csv', True)

# covi19-cells single tests data extraction

# covid19-cells single tests
#rundataextraction('./modulation-covid19-cells-results-score-fdaonly-posonly', 'test', sel , None, False, None)
#rundataextraction('./modulation-covid19-cells-results-score-fdaonly-posonly', 'test', sel ,'covid19-cells-data-fdaonly-pos-score-2021-03-14.csv', True, ';')
#rundataextraction('./modulation-covid19-cells-results-score-nofda-posonly', 'test', sel , None, False, None)
#rundataextraction('./modulation-covid19-cells-results-score-nofda-posonly', 'test', sel , 'covid19-cells-data-nofda-pos-score-2021-03-14.csv', True, ';')

#rundataextraction('./modulation-covid19-cells-results-pval-fdaonly-posonly', 'test', sel , None, False, None)
#rundataextraction('./modulation-covid19-cells-results-pval-fdaonly-posonly', 'test', sel , 'covid19-cells-data-fdaonly-pos-pval-2021-03-14.csv', True, ';')
#rundataextraction('./modulation-covid19-cells-results-pval-fdaonly-allposonly', 'test', sel , None, False, None)
#rundataextraction('./modulation-covid19-cells-results-pval-fdaonly-allposonly', 'test', sel , 'covid19-cells-data-fdaonly-allpos-pval-2021-03-14.csv', True, ';')
#rundataextraction('./modulation-covid19-cells-results-pval-fdaonly-nopos', 'test', sel , None, False, None)
#rundataextraction('./modulation-covid19-cells-results-pval-fdaonly-nopos', 'test', sel , 'covid19-cells-data-fdaonly-nopos-pval-2021-03-14.csv', True, ';')

#rundataextraction('./modulation-covid19-cells-results-pval-nofda-posonly', 'test', sel , None, False, None)
#rundataextraction('./modulation-covid19-cells-results-pval-nofda-posonly', 'test', sel , 'covid19-cells-data-nofda-pos-pval-2021-03-14.csv', True, ';')
#rundataextraction('./modulation-covid19-cells-results-pval-nofda-nopos', 'test', sel , None, False, None, None)
#rundataextraction('./modulation-covid19-cells-results-pval-nofda-nopos', 'test', sel , 'covid19-cells-data-nofda-nopos-pval-2021-03-14.csv', True, ';')
#rundataextraction('./modulation-covid19-cells-results-pval-nofda-allposonly', 'test', sel , None, False, None)
#rundataextraction('./modulation-covid19-cells-results-pval-nofda-allposonly', 'test', sel , 'covid19-cells-data-nofda-allpos-pval-2021-03-14.csv', True, ';')

# covi19-cells merge data extraction

#rundataextraction('./modulation-covid19-cells-results-score-fdaonly-posonly', 'merge', sel , None, False, None)
#rundataextraction('./modulation-covid19-cells-results-score-fdaonly-posonly', 'merge', sel , 'covid19-cells-data-fdaonly-pos-score-merge-2021-03-15.csv', True, ';')
#rundataextraction('./modulation-covid19-cells-results-score-nodfa-posonly', 'merge', sel , None, False, None)
#rundataextraction('./modulation-covid19-cells-results-score-nofda-posonly', 'merge', sel , 'covid19-cells-data-nofda-pos-score-merge-2021-03-15.csv', True, ';')


#rundataextraction('./modulation-covid19-cells-results-pval-fdaonly-allposonly', 'merge', sel , None, False, None)
#rundataextraction('./modulation-covid19-cells-results-pval-fdaonly-allposonly', 'merge', sel , 'covid19-cells-data-fdaonly-allpos-pval-merge-2021-03-15.csv', True, ';')
#rundataextraction('./modulation-covid19-cells-results-pval-fdaonly-posonly', 'merge', sel , None, False, None)
#rundataextraction('./modulation-covid19-cells-results-pval-fdaonly-posonly', 'merge', sel , 'covid19-cells-data-fdaonly-pos-pval-merge-2021-03-15.csv', True, ';')
#rundataextraction('./modulation-covid19-cells-results-pval-fdaonly-nopos', 'merge', sel , None, False, None)
#rundataextraction('./modulation-covid19-cells-results-pval-fdaonly-nopos', 'merge', sel , 'covid19-cells-data-fdaonly-nopos-pval-merge-2021-03-15.csv', True, ';')

#rundataextraction('./modulation-covid19-cells-results-pval-nofda-allposonly', 'merge', sel , None, False, None)
#rundataextraction('./modulation-covid19-cells-results-pval-nofda-allposonly', 'merge', sel , 'covid19-cells-data-nofda-allpos-pval-merge-2021-03-15.csv', True, ';')
#rundataextraction('./modulation-covid19-cells-results-pval-nofda-posonly', 'merge', sel , None, False, None)
#rundataextraction('./modulation-covid19-cells-results-pval-nofda-posonly', 'merge', sel , 'covid19-cells-data-nofda-pos-pval-merge-2021-03-15.csv', True, ';')
#rundataextraction('./modulation-covid19-cells-results-pval-nofda-nopos', 'merge', sel , None, False, None)
#rundataextraction('./modulation-covid19-cells-results-pval-nofda-nopos', 'merge', sel , 'covid19-cells-data-nofda-nopos-pval-mege-2021-03-15.csv', True, ';')



##

# covi19-pbmc single tests data extraction

# covid19-pbmc single tests
#rundataextraction('./modulation-covid19-pbmc-results-score-fdaonly-posonly', 'test', sel , None, False, None)
#rundataextraction('./modulation-covid19-pbmc-results-score-fdaonly-posonly', 'test', sel ,'covid19-pbmc-data-fdaonly-pos-score-2021-03-22.csv', True, ';')
#rundataextraction('./modulation-covid19-pbmc-results-score-nofda-posonly', 'test', sel , None, False, None)
#rundataextraction('./modulation-covid19-pbmc-results-score-nofda-posonly', 'test', sel , 'covid19-pbmc-data-nofda-pos-score-2021-03-22.csv', True, ';')


#rundataextraction('./modulation-covid19-pbmc-results-pval-fdaonly-posonly', 'test', sel , None, False, None)
#rundataextraction('./modulation-covid19-pbmc-results-pval-fdaonly-posonly', 'test', sel , 'covid19-pbmc-data-fdaonly-pos-pval-2021-03-22.csv', True, ';')
#rundataextraction('./modulation-covid19-pbmc-results-pval-fdaonly-allposonly', 'test', sel , None, False, None)
#rundataextraction('./modulation-covid19-pbmc-results-pval-fdaonly-allposonly', 'test', sel , 'covid19-pbmc-data-fdaonly-allpos-pval-2021-03-22.csv', True, ';')
#rundataextraction('./modulation-covid19-pbmc-results-pval-fdaonly-nopos', 'test', sel , None, False, None)
#rundataextraction('./modulation-covid19-pbmc-results-pval-fdaonly-nopos', 'test', sel , 'covid19-pbmc-data-fdaonly-nopos-pval-2021-03-22.csv', True, ';')

#rundataextraction('./modulation-covid19-pbmc-results-pval-nofda-posonly', 'test', sel , None, False, None)
#rundataextraction('./modulation-covid19-pbmc-results-pval-nofda-posonly', 'test', sel , 'covid19-pbmc-data-nofda-pos-pval-2021-03-22.csv', True, ';')
#rundataextraction('./modulation-covid19-pbmc-results-pval-nofda-nopos', 'test', sel , None, False, None, None)
#rundataextraction('./modulation-covid19-pbmc-results-pval-nofda-nopos', 'test', sel , 'covid19-pbmc-data-nofda-nopos-pval-2021-03-22.csv', True, ';')
#rundataextraction('./modulation-covid19-pbmc-results-pval-nofda-allposonly', 'test', sel , None, False, None)
#rundataextraction('./modulation-covid19-pbmc-results-pval-nofda-allposonly', 'test', sel , 'covid19-pbmc-data-nofda-allpos-pval-2021-03-22.csv', True, ';')

# covi19-pbmc merge


# covi19-balf single tests data extraction

#rundataextraction('./modulation-covid19-balf-results-score-fdaonly-posonly', 'test', sel , None, False, None)
#rundataextraction('./modulation-covid19-balf-results-score-fdaonly-posonly', 'test', sel ,'covid19-balf-data-fdaonly-pos-score-2021-03-24.csv', True, ';')
#rundataextraction('./modulation-covid19-balf-results-score-nofda-posonly', 'test', sel , None, False, None)
#rundataextraction('./modulation-covid19-balf-results-score-nofda-posonly', 'test', sel , 'covid19-balf-data-nofda-pos-score-2021-03-24.csv', True, ';')


#rundataextraction('./modulation-covid19-balf-results-pval-fdaonly-posonly', 'test', sel , None, False, None)
#rundataextraction('./modulation-covid19-balf-results-pval-fdaonly-posonly', 'test', sel , 'covid19-balf-data-fdaonly-pos-pval-2021-03-24.csv', True, ';')
#rundataextraction('./modulation-covid19-balf-results-pval-fdaonly-allposonly', 'test', sel , None, False, None)
#rundataextraction('./modulation-covid19-balf-results-pval-fdaonly-allposonly', 'test', sel , 'covid19-balf-data-fdaonly-allpos-pval-2021-03-24.csv', True, ';')
#rundataextraction('./modulation-covid19-balf-results-pval-fdaonly-nopos', 'test', sel , None, False, None)
#rundataextraction('./modulation-covid19-balf-results-pval-fdaonly-nopos', 'test', sel , 'covid19-balf-data-fdaonly-nopos-pval-2021-03-24.csv', True, ';')

#rundataextraction('./modulation-covid19-balf-results-pval-nofda-posonly', 'test', sel , None, False, None)
#rundataextraction('./modulation-covid19-balf-results-pval-nofda-posonly', 'test', sel , 'covid19-balf-data-nofda-pos-pval-2021-03-24.csv', True, ';')
#rundataextraction('./modulation-covid19-balf-results-pval-nofda-nopos', 'test', sel , None, False, None, None)
#rundataextraction('./modulation-covid19-balf-results-pval-nofda-nopos', 'test', sel , 'covid19-balf-data-nofda-nopos-pval-2021-03-24.csv', True, ';')
#rundataextraction('./modulation-covid19-balf-results-pval-nofda-allposonly', 'test', sel , None, False, None)
#rundataextraction('./modulation-covid19-balf-results-pval-nofda-allposonly', 'test', sel , 'covid19-balf-data-nofda-allpos-pval-2021-03-24.csv', True, ';')




# prc single tests data extraction

#rundataextraction('./modulation-prostate-cancer-results-score-fdaonly-posonly', 'test', sel , None, False, None)
#rundataextraction('./modulation-prostate-cancer-results-score-fdaonly-posonly', 'test', sel ,'prc-data-fdaonly-pos-score-2021-03-24.csv', True, ';')
#rundataextraction('./modulation-prostate-cancer-results-score-nofda-posonly', 'test', sel , None, False, None)
#rundataextraction('./modulation-prostate-cancer-results-score-nofda-posonly', 'test', sel , 'prc-data-nofda-pos-score-2021-03-24.csv', True, ';')


#rundataextraction('./modulation-prostate-cancer-results-pval-fdaonly-posonly', 'test', sel , None, False, None)
#rundataextraction('./modulation-prostate-cancer-results-pval-fdaonly-posonly', 'test', sel , 'prc-data-fdaonly-pos-pval-2021-03-24.csv', True, ';')
#rundataextraction('./modulation-prostate-cancer-results-pval-fdaonly-allposonly', 'test', sel , None, False, None)
#rundataextraction('./modulation-prostate-cancer-results-pval-fdaonly-allposonly', 'test', sel , 'prc-data-fdaonly-allpos-pval-2021-03-24.csv', True, ';')
#rundataextraction('./modulation-prostate-cancer-results-pval-fdaonly-nopos', 'test', sel , None, False, None)
#rundataextraction('./modulation-prostate-cancer-results-pval-fdaonly-nopos', 'test', sel , 'prc-data-fdaonly-nopos-pval-2021-03-24.csv', True, ';')

#rundataextraction('./modulation-prostate-cancer-results-pval-nofda-posonly', 'test', sel , None, False, None)
#rundataextraction('./modulation-prostate-cancer-results-pval-nofda-posonly', 'test', sel , 'prc-data-nofda-pos-pval-2021-03-24.csv', True, ';')
#rundataextraction('./modulation-prostate-cancer-results-pval-nofda-nopos', 'test', sel , None, False, None, None)
#rundataextraction('./modulation-prostate-cancer-results-pval-nofda-nopos', 'test', sel , 'prc-data-nofda-nopos-pval-2021-03-24.csv', True, ';')
#rundataextraction('./modulation-prostate-cancer-results-pval-nofda-allposonly', 'test', sel , None, False, None)
#rundataextraction('./modulation-prostate-cancer-results-pval-nofda-allposonly', 'test', sel , 'prc-data-nofda-allpos-pval-2021-03-24.csv', True, ';')


# prc single merge data extraction

#rundataextraction('./modulation-prostate-cancer-results-score-fdaonly-posonly', 'merge', sel ,'merge-prc-data-fdaonly-pos-score-2021-03-24.csv', True, ';')
#rundataextraction('./modulation-prostate-cancer-results-score-nofda-posonly', 'merge', sel , 'merge-prc-data-nofda-pos-score-2021-03-24.csv', True, ';')
#rundataextraction('./modulation-prostate-cancer-results-pval-fdaonly-allposonly', 'merge', sel , 'merge-prc-data-fdaonly-allpos-pval-2021-03-29.csv', True, ';')
#rundataextraction('./modulation-prostate-cancer-results-pval-fdaonly-posonly', 'merge', sel , 'merge-prc-data-fdaonly-pos-pval-2021-03-29.csv', True, ';')
#rundataextraction('./modulation-prostate-cancer-results-pval-fdaonly-nopos', 'merge', sel , 'merge-prc-data-fdaonly-nopos-pval-2021-03-29.csv', True, ';')
#rundataextraction('./modulation-prostate-cancer-results-pval-nofda-posonly', 'merge', sel , 'merge-prc-data-nofda-pos-pval-2021-03-24.csv', True, ';')
#rundataextraction('./modulation-prostate-cancer-results-pval-nofda-allposonly', 'merge', sel , 'merge-prc-data-nofda-allpos-pval-2021-03-24.csv', True, ';')



# checking merge of 3 covid19 data sets single algorithms pval

#rundataextraction('./modulation-covid19-pbmc-results-pval-fdaonly-allposonly', 'merge', sel , None, False, None)
#rundataextraction('./modulation-covid19-pbmc-results-pval-fdaonly-allposonly', 'merge', sel , 'Single-alg-All-data-fdaonly-allpos-pval-2021-03-24.csv', True, ';')
#rundataextraction('./modulation-covid19-pbmc-results-pval-nofda-allposonly', 'merge', sel , None, False, None)
#rundataextraction('./modulation-covid19-pbmc-results-pval-nofda-allposonly', 'merge', sel , 'Single-alg-All-data-nofda-allpos-pval-2021-03-24.csv', True, ';')

# checking merge of 3 covid19 data sets single algorithms score and multi alg. 

#rundataextraction('./modulation-covid19-pbmc-results-score-fdaonly-posonly', 'merge', sel , None, False, None)
#rundataextraction('./modulation-covid19-pbmc-results-score-fdaonly-posonly', 'merge', sel , 'Single-alg-All-data-fdaonly-allpos-score-2021-03-26.csv', True, ';')
#rundataextraction('./modulation-covid19-pbmc-results-score-nofda-posonly', 'merge', sel , None, False, None)
#rundataextraction('./modulation-covid19-pbmc-results-score-nofda-posonly', 'merge', sel , 'Single-alg-All-data-nofda-allpos-score-2021-03-26.csv', True, ';')

#rundataextraction('./modulation-covid19-pbmc-results-score-fdaonly-posonly', 'global', sel , None, False, None)
#rundataextraction('./modulation-covid19-pbmc-results-score-fdaonly-posonly', 'global', sel , 'Global-alg-All-data-fdaonly-allpos-score-2021-03-26.csv', True, ';')
#rundataextraction('./modulation-covid19-pbmc-results-score-nofda-posonly', 'global', sel , None, False, None)
#rundataextraction('./modulation-covid19-pbmc-results-score-nofda-posonly', 'global', sel , 'Global-alg-All-data-nofda-allpos-score-2021-03-26.csv', True, ';')



# checking merge of 3 covid19 data sets and all algorithms

#rundataextraction('./modulation-covid19-pbmc-results-pval-fdaonly-allposonly', 'global', sel , None, False, None)
#rundataextraction('./modulation-covid19-pbmc-results-pval-fdaonly-allposonly', 'global', sel , 'Global-alg-All-data-fdaonly-allpos-pval-2021-03-24.csv', True, ';')
#rundataextraction('./modulation-covid19-pbmc-results-pval-nofda-allposonly', 'global', sel , None, False, None)
#rundataextraction('./modulation-covid19-pbmc-results-pval-nofda-allposonly', 'global', sel , 'Global-alg-All-data-nofda-allpos-pval-2021-03-24.csv', True, ';')



# crc single tests data extraction

#rundataextraction('./modulation-colorectal-cancer-results-score-fdaonly-posonly', 'test', sel , None, False, None)
#rundataextraction('./modulation-colorectal-cancer-results-score-fdaonly-posonly', 'test', sel ,'crc-data-fdaonly-pos-score-2021-04-10.csv', True, ';')
#rundataextraction('./modulation-colorectal-cancer-results-score-nofda-posonly', 'test', sel , None, False, None)
#rundataextraction('./modulation-colorectal-cancer-results-score-nofda-posonly', 'test', sel , 'crc-data-nofda-pos-score-2021-04-10.csv', True, ';')


#rundataextraction('./modulation-colorectal-cancer-results-pval-fdaonly-posonly', 'test', sel , None, False, None)
#rundataextraction('./modulation-colorectal-cancer-results-pval-fdaonly-posonly', 'test', sel , 'crc-data-fdaonly-pos-pval-2021-04-10.csv', True, ';')
#rundataextraction('./modulation-colorectal-cancer-results-pval-fdaonly-allposonly', 'test', sel , None, False, None)
#rundataextraction('./modulation-colorectal-cancer-results-pval-fdaonly-allposonly', 'test', sel , 'crc-data-fdaonly-allpos-pval-2021-04-10.csv', True, ';')
#rundataextraction('./modulation-colorectal-cancer-results-pval-fdaonly-nopos', 'test', sel , None, False, None)
#rundataextraction('./modulation-colorectal-cancer-results-pval-fdaonly-nopos', 'test', sel , 'crc-data-fdaonly-nopos-pval-2021-04-10.csv', True, ';')

#rundataextraction('./modulation-colorectal-cancer-results-pval-nofda-posonly', 'test', sel , None, False, None)
#rundataextraction('./modulation-colorectal-cancer-results-pval-nofda-posonly', 'test', sel , 'crc-data-nofda-pos-pval-2021-04-10.csv', True, ';')
#rundataextraction('./modulation-colorectal-cancer-results-pval-nofda-nopos', 'test', sel , None, False, None, None)
#rundataextraction('./modulation-colorectal-cancer-results-pval-nofda-nopos', 'test', sel , 'crc-data-nofda-nopos-pval-2021-04-10.csv', True, ';')
#rundataextraction('./modulation-colorectal-cancer-results-pval-nofda-allposonly', 'test', sel , None, False, None)
#rundataextraction('./modulation-colorectal-cancer-results-pval-nofda-allposonly', 'test', sel , 'crc-data-nofda-allpos-pval-2021-04-10.csv', True, ';')

# crc single merge data extraction

#rundataextraction('./modulation-colorectal-cancer-results-score-fdaonly-posonly', 'merge', sel ,'merge-crc-data-fdaonly-pos-score-2021-04-10.csv', True, ';')
#rundataextraction('./modulation-colorectal-cancer-results-score-nofda-posonly', 'merge', sel , 'merge-crc-data-nofda-pos-score-2021-04-10.csv', True, ';')
#rundataextraction('./modulation-colorectal-cancer-results-pval-fdaonly-allposonly', 'merge', sel , 'merge-crc-data-fdaonly-allpos-pval-2021-04-10.csv', True, ';')
#rundataextraction('./modulation-colorectal-cancer-results-pval-fdaonly-posonly', 'merge', sel , 'merge-crc-data-fdaonly-pos-pval-2021-04-10.csv', True, ';')
#rundataextraction('./modulation-colorectal-cancer-results-pval-fdaonly-nopos', 'merge', sel , 'merge-crc-data-fdaonly-nopos-pval-2021-04-10.csv', True, ';')
#rundataextraction('./modulation-colorectal-cancer-results-pval-nofda-posonly', 'merge', sel , 'merge-crc-data-nofda-pos-pval-2021-04-10.csv', True, ';')
#rundataextraction('./modulation-colorectal-cancer-results-pval-nofda-allposonly', 'merge', sel , 'merge-crc-data-nofda-allpos-pval-2021-04-10.csv', True, ';')



###############################################################################
# Automatic gernatio of .bat files by changing an existign bat file.
# 

def generate_new_bat(path, infilename, outfilename, replacementlist):

    fout = open(os.path.join(path,outfilename), 'w')

    out = []
    f = open(os.path.join(path,infilename), 'r')    
    ss = f.readline()
    print "In ", ss
#    print ss
    while ss != '' :
        ss1 = ss.strip()
        for pair in replacementlist :
            ss2 = ss1.replace(pair[0], pair[1])
            ss1 = ss2
        fout.write(ss2+'\n')
        print "Out ", ss2
        ss = f.readline()
        print "In ", ss

    f.close()
    fout.close()

#############################################################
#

# asthma to asthma, x score 
#replacementlist1 = [('--reuse=True','--reuse=False'),('--fdadrugsonly=True','--fdadrugsonly=False'),('2021-02-11','2021-02-12'), ('-fdaonly', '-nofda')]
#inname =  'script_asthma_score_generation_fdaonly_posonly_2021_01_30.bat'
#outname = 'prova-script.bat'
#generate_new_bat('.', inname, outname, replacementlist1)
# done

# arthrities to astma , pval
#replacementlist2 = [('arthritis', 'asthma'),('arth', 'asth'),('2021-02-02','2021-02-12')]
#inname =  'script_arthritis_pval_generation_fdaonly_posonly_allfilters_2021_02_02.bat'
#outname =    'script_asthma_pval_generation_fdaonly_posonly_allfilters_2021_02_12.bat'
#generate_new_bat('.', inname, outname, replacementlist2)
# done

##replacementlist3 = [('arthritis', 'asthma'),('arth', 'asth'),('2021-02-02','2021-02-12')]
##inname = 'script_arthritis_pval_generation_fdaonly_posonly_2021_02_02.bat'
##outname =   'script_asthma_pval_generation_fdaonly_posonly_2021_02_12.bat'
##generate_new_bat('.', inname, outname, replacementlist3)
# done

##replacementlist4 = [('arthritis', 'asthma'),('arth', 'asth'),('2021-02-03','2021-02-12')]
##inname = 'script_arthritis_pval_generation_fdaonly_nopos_2021_02_03.bat'
##outname =   'script_asthma_pval_generation_fdaonly_nopos_2021_02_12.bat'
##generate_new_bat('.',inname, outname, replacementlist4)
# done

##replacementlist5 = [('arthritis', 'asthma'),('arth', 'asth'),('2021-02-02','2021-02-12')]
##inname = 'script_arthritis_pval_generation_nofda_posonly_allfilters_2021_02_02.bat'
##outname =   'script_asthma_pval_generation_nofda_posonly_allfilters_2021_02_12.bat'
##generate_new_bat('.', inname, outname, replacementlist5)
# done

##replacementlist6 = [('arthritis', 'asthma'),('arth', 'asth'),('2021-02-02','2021-02-12')]
##inname = 'script_arthritis_pval_generation_nofda_posonly_2021_02_02.bat'
##outname =   'script_asthma_pval_generation_nofda_posonly_2021_02_12.bat'
##generate_new_bat('.',inname, outname, replacementlist6)
# done

##replacementlist7 = [('arthritis', 'asthma'),('arth', 'asth'),('2021-02-02','2021-02-12')]
##inname =  'script_arthritis_pval_generation_nofda_nopos_2021_02_02.bat'
##outname =    'script_asthma_pval_generation_nofda_nopos_2021_02_12.bat'
##generate_new_bat('.', inname, outname, replacementlist7)
# done

##################################################################################
# asthma merging

# no merging dome given the results..

################################################################################
# 

##################################################################################
# generation of bat files for covid19-cells starting from asthma (first).
# add the scond cp alg by hand

##replacementlist1 = [('asthma', 'cells'), ('asth', 'cells'), ('--reuse=True','--reuse=False'),('--fdadrugsonly=True','--fdadrugsonly=False'),('2021-02-11','2021-03-13'), ('-fdaonly', '-nofda')]
##inname =  'script_asthma_score_generation_fdaonly_posonly_2021_01_30.bat'
##outname = 'script_covid19_cells_score_generation_nofda_posonly_2021_03_13.bat'
##generate_new_bat('.', inname, outname, replacementlist1)
# done

##replacementlist1 = [('--fdadrugsonly=False','--fdadrugsonly=True'), ('-nofda', '-fdaonly')]
##inname =  'script_covid19_cells_score_generation_nofda_posonly_2021_03_13.bat'
##outname = 'script_covid19_cells_score_generation_fdaonly_posonly_2021_03_13.bat'
##generate_new_bat('.', inname, outname, replacementlist1)
#done


# arthrities to cells  , pval  . check by hand for extra filters and remove duplication of runs.
##replacementlist2 = [('arthritis', 'cells'),('arth', 'cells'),('2021-02-02','2021-03-13')]
##inname =  'script_arthritis_pval_generation_fdaonly_posonly_allfilters_2021_02_02.bat'
##outname =    'script_covid19_cells_pval_generation_fdaonly_posonly_allfilters_2021_03_13.bat'
##generate_new_bat('.', inname, outname, replacementlist2)
# done


##replacementlist5 = [('--fdadrugsonly=True','--fdadrugsonly=False')]
##inname = 'script_covid19_cells_pval_generation_fdaonly_posonly_allfilters_2021_03_13.bat'
##outname =   'script_covid19_cells_pval_generation_nofda_posonly_allfilters_2021_03_13.bat'
##generate_new_bat('.', inname, outname, replacementlist5)
# done


# fix by hand the filters and missing algorithms 
##replacementlist7 = [('-arthritis-', '-covid19-cells-'),('arth', 'cells'),('2021-02-02','2021-03-13')]
##inname =  'script_arthritis_pval_generation_nofda_nopos_2021_02_02.bat'
##outname =    'script_covid19_cells_pval_generation_nofda_nopos_2021_03_13.bat'
##generate_new_bat('.', inname, outname, replacementlist7)
# done


##replacementlist4 = [('--fdadrugsonly=False','--fdadrugsonly=True')]
##inname = 'script_covid19_cells_pval_generation_nofda_nopos_2021_03_13.bat'
##outname =   'script_covid19_cells_pval_generation_fdaonly_nopos_2021_03_13.bat'
##generate_new_bat('.',inname, outname, replacementlist4)
#done

# fix by hand the filters with the extra items, and the extra algorithm
##replacementlist3 = [('-arthritis-', '-covid19-cells-'),('arth', 'cells'),('2021-02-02','2021-03-13')]
##inname = 'script_arthritis_pval_generation_fdaonly_posonly_2021_02_02.bat'
##outname =   'script_covid19_cells_pval_generation_fdaonly_posonly_2021_03_13.bat'
##generate_new_bat('.', inname, outname, replacementlist3)
# done


##replacementlist6 = [('fdaonly', 'nofda'),('--fdadrugsonly=True','--fdadrugsonly=false')]
##inname = 'script_covid19_cells_pval_generation_fdaonly_posonly_2021_03_13.bat'
##outname =   'script_covid19_cells_pval_generation_nofda_posonly_2021_03_13.bat'
##generate_new_bat('.',inname, outname, replacementlist6)
#done

##################################################
# covid19-cells merge scripts

# next fix ags by hand.. 
##replacementlist1 = [('--fdadrugsonly=False' ,'--fdadrugsonly=True'), ('-nofda', '-fdaonly')]
##inname =  'script_covid19_cells_score_merge_nofda_posonly_2021_03_15.bat'
##outname = 'script_covid19_cells_score_merge_fdaonly_posonly_2021_03_15.bat'
##generate_new_bat('.', inname, outname, replacementlist1)

# pvals


# cells  , pval from generation to merge  .

##replacementlist2 = [('test', 'merge'),('2021-03-13','2021-03-15')]
##inname =     'script_covid19_cells_pval_generation_fdaonly_posonly_allfilters_2021_03_13.bat'
##outname =    'script_covid19_cells_pval_merge_fdaonly_posonly_allfilters_2021_03_15.bat'
##generate_new_bat('.', inname, outname, replacementlist2)
# done


##replacementlist5 = [('test', 'merge'),('2021-03-13','2021-03-15')]
##inname =    'script_covid19_cells_pval_generation_fdaonly_posonly_2021_03_13.bat'
##outname =   'script_covid19_cells_pval_merge_fdaonly_posonly_2021_03_15.bat'
##generate_new_bat('.', inname, outname, replacementlist5)
# done


# fix by hand the filters with the extra items, and the extra algorithm
##replacementlist3 = [('test', 'merge'),('2021-03-13','2021-03-15')]
##inname =    'script_covid19_cells_pval_generation_fdaonly_nopos_2021_03_13.bat'
##outname =   'script_covid19_cells_pval_merge_fdaonly_nopos_2021_03_15.bat'
##generate_new_bat('.', inname, outname, replacementlist3)
# done


##replacementlist6 = [('test', 'merge'),('2021-03-13','2021-03-15')]
##inname =    'script_covid19_cells_pval_generation_nofda_posonly_allfilters_2021_03_13.bat'
##outname =   'script_covid19_cells_pval_merge_nofda_posonly_2021_allfilters_03_15.bat'
##generate_new_bat('.',inname, outname, replacementlist6)
# doen by hand


##replacementlist6 = [('test', 'merge'),('2021-03-13','2021-03-15')]
##inname =    'script_covid19_cells_pval_generation_nofda_posonly_2021_03_13.bat'
##outname =   'script_covid19_cells_pval_merge_nofda_posonly_2021_03_15.bat'
##generate_new_bat('.',inname, outname, replacementlist6)
# done


# fix by hand the filters and missing algorithms 
##replacementlist7 = [('test', 'merge'),('2021-03-13','2021-03-15')]
##inname =     'script_covid19_cells_pval_generation_nofda_nopos_2021_03_13.bat'
##outname =    'script_covid19_cells_pval_merge_nofda_nopos_2021_03_15.bat'
##generate_new_bat('.', inname, outname, replacementlist7)
# done








##################################################################################
# generation of bat files for covid19-pbmc from covid19-cells


##replacementlist1 = [('covid19-cells', 'covid19-pbmc'), ('cells', 'pbmc'),('2021-03-13','2021-03-14-laptop')]
##inname =  'script_covid19_cells_score_generation_nofda_posonly_2021_03_13.bat'
##outname = 'script_covid19_pbmc_score_generation_nofda_posonly_2021_03_14.bat'
##generate_new_bat('.', inname, outname, replacementlist1)
# done

##replacementlist1 = [('covid19-cells', 'covid19-pbmc'), ('cells', 'pbmc'),('2021-03-13','2021-03-14-laptop')]
##inname =  'script_covid19_cells_score_generation_fdaonly_posonly_2021_03_13.bat'
##outname = 'script_covid19_pbmc_score_generation_fdaonly_posonly_2021_03_14.bat'
##generate_new_bat('.', inname, outname, replacementlist1)
# done



#  cells to pbmc , pval  . check by hand for extra filters and remove duplication of runs.
##replacementlist2 = [('covid19-cells', 'covid19-pbmc'), ('cells', 'pbmc'),('2021-03-13','2021-03-14-laptop')]
##inname =     'script_covid19_cells_pval_generation_fdaonly_posonly_allfilters_2021_03_13.bat'
##outname =    'script_covid19_pbmc_pval_generation_fdaonly_posonly_allfilters_2021_03_14.bat'
##generate_new_bat('.', inname, outname, replacementlist2)
# done


##replacementlist5 = [('covid19-cells', 'covid19-pbmc'), ('cells', 'pbmc'),('2021-03-13','2021-03-14-laptop')]
##inname =    'script_covid19_cells_pval_generation_nofda_posonly_allfilters_2021_03_13.bat'
##outname =   'script_covid19_pbmc_pval_generation_nofda_posonly_allfilters_2021_03_14.bat'
##generate_new_bat('.', inname, outname, replacementlist5)
# done


# fix by hand the filters and missing algorithms 
##replacementlist7 = [('covid19-cells', 'covid19-pbmc'), ('cells', 'pbmc'),('2021-03-13','2021-03-14-laptop')]
##inname =     'script_covid19_cells_pval_generation_nofda_nopos_2021_03_13.bat'
##outname =    'script_covid19_pbmc_pval_generation_nofda_nopos_2021_03_14.bat'
##generate_new_bat('.', inname, outname, replacementlist7)
# done


##replacementlist4 = [('covid19-cells', 'covid19-pbmc'), ('cells', 'pbmc'),('2021-03-13','2021-03-14-laptop')]
##inname =    'script_covid19_cells_pval_generation_fdaonly_nopos_2021_03_13.bat'
##outname =   'script_covid19_pbmc_pval_generation_fdaonly_nopos_2021_03_14.bat'
##generate_new_bat('.',inname, outname, replacementlist4)
# done

# fix by hand the filters with the extra items, and the extra algorithm
##replacementlist3 = [('covid19-cells', 'covid19-pbmc'), ('cells', 'pbmc'),('2021-03-13','2021-03-14-laptop')]
##inname =    'script_covid19_cells_pval_generation_fdaonly_posonly_2021_03_13.bat'
##outname =   'script_covid19_pbmc_pval_generation_fdaonly_posonly_2021_03_14.bat'
##generate_new_bat('.', inname, outname, replacementlist3)
# done


##replacementlist6 = [('covid19-cells', 'covid19-pbmc'), ('cells', 'pbmc'),('2021-03-13','2021-03-14-laptop')]
##inname =    'script_covid19_cells_pval_generation_nofda_posonly_2021_03_13.bat'
##outname =   'script_covid19_pbmc_pval_generation_nofda_posonly_2021_03_14.bat'
##generate_new_bat('.',inname, outname, replacementlist6)
#done

##############################################################
# genrate prostate cancer .sh 

##replacementlist7 = [('covid19-balf', 'prostate-cancer'), ('balf', 'prc'),('2021-03-14','2021-03-16')]
##inname =    'script_covid19_balf_score_generation_fdaonly_posonly_2021_03_14_elmer.sh'
##outname =   'script_prc_score_generation_fdaonly_posonly_2021_03_16_elmer.sh'
##generate_new_bat('.',inname, outname, replacementlist7)
#done

##replacementlist8 = [('covid19-balf', 'prostate-cancer'), ('balf', 'prc'),('2021-03-14','2021-03-16')]
##inname =    'script_covid19_balf_score_generation_nofda_posonly_2021_03_14_elmer.sh'
##outname =   'script_prc_score_generation_nofda_posonly_2021_03_16_elmer.sh'
##generate_new_bat('.',inname, outname, replacementlist8)
#done

##replacementlist7 = [('prostate-cancer', 'colorectal-cancer'), ('prc', 'crc'),('2021-03-15','2021-03-19')]
##inname =    'script_prc_score_generation_fdaonly_posonly_2021_03_16_elmer.sh'
##outname =   'script_crc_score_generation_fdaonly_posonly_2021_03_19_elmer.sh'
##generate_new_bat('.',inname, outname, replacementlist7)
#done

##replacementlist8 = [('prostate-cancer', 'colorectal-cancer'), ('prc', 'crc'),('2021-03-15','2021-03-19')]
##inname =    'script_prc_score_generation_nofda_posonly_2021_03_16_elmer.sh'
##outname =   'script_crc_score_generation_nofda_posonly_2021_03_19_elmer.sh'
##generate_new_bat('.',inname, outname, replacementlist8)
#done


#########################################################
# generation of balf scripts from pbmc scripts

##replacementlist1 = [('covid19-pbmc', 'covid19-balf'), ('pbmc', 'balf'),('2021-03-14-laptop','2021-03-23-laptop')]
##inname =  'script_covid19_pbmc_score_generation_nofda_posonly_2021_03_14.bat'
##outname = 'script_covid19_balf_score_generation_nofda_posonly_2021_03_23.bat'
##generate_new_bat('.', inname, outname, replacementlist1)
# done

##replacementlist1 = [('covid19-pbmc', 'covid19-balf'), ('pbmc', 'balf'),('2021-03-14-laptop','2021-03-23-laptop')]
##inname =  'script_covid19_pbmc_score_generation_fdaonly_posonly_2021_03_14.bat'
##outname = 'script_covid19_balf_score_generation_fdaonly_posonly_2021_03_23.bat'
##generate_new_bat('.', inname, outname, replacementlist1)
# done



#  pbmc to balf  , pval  . check by hand for extra filters and remove duplication of runs.
##replacementlist2 = [('covid19-pbmc', 'covid19-balf'), ('pbmc', 'balf'),('2021-03-14-laptop','2021-03-23-laptop')]
##inname =     'script_covid19_pbmc_pval_generation_fdaonly_posonly_allfilters_2021_03_14.bat'
##outname =    'script_covid19_balf_pval_generation_fdaonly_posonly_allfilters_2021_03_23.bat'
##generate_new_bat('.', inname, outname, replacementlist2)
# done


##replacementlist5 = [('covid19-pbmc', 'covid19-balf'), ('pbmc', 'balf'),('2021-03-14-laptop','2021-03-23-laptop')]
##inname =    'script_covid19_pbmc_pval_generation_nofda_posonly_allfilters_2021_03_14.bat'
##outname =   'script_covid19_balf_pval_generation_nofda_posonly_allfilters_2021_03_23.bat'
##generate_new_bat('.', inname, outname, replacementlist5)
# done


#  
##replacementlist7 = [('covid19-pbmc', 'covid19-balf'), ('pbmc', 'balf'),('2021-03-14-laptop','2021-03-23-laptop')]
##inname =     'script_covid19_pbmc_pval_generation_nofda_nopos_2021_03_14.bat'
##outname =    'script_covid19_balf_pval_generation_nofda_nopos_2021_03_23.bat'
##generate_new_bat('.', inname, outname, replacementlist7)
# done


##replacementlist4 = [('covid19-pbmc', 'covid19-balf'), ('pbmc', 'balf'),('2021-03-14-laptop','2021-03-23-laptop')]
##inname =    'script_covid19_pbmc_pval_generation_fdaonly_nopos_2021_03_14.bat'
##outname =   'script_covid19_balf_pval_generation_fdaonly_nopos_2021_03_23.bat'
##generate_new_bat('.',inname, outname, replacementlist4)
# done

# 
##replacementlist3 = [('covid19-pbmc', 'covid19-balf'), ('pbmc', 'balf'),('2021-03-14-laptop','2021-03-23-laptop')]
##inname =    'script_covid19_pbmc_pval_generation_fdaonly_posonly_2021_03_14.bat'
##outname =   'script_covid19_balf_pval_generation_fdaonly_posonly_2021_03_23.bat'
##generate_new_bat('.', inname, outname, replacementlist3)
# done


##replacementlist6 = [('covid19-pbmc', 'covid19-balf'), ('pbmc', 'balf'),('2021-03-14-laptop','2021-03-23-laptop')]
##inname =    'script_covid19_pbmc_pval_generation_nofda_posonly_2021_03_14.bat'
##outname =   'script_covid19_balf_pval_generation_nofda_posonly_2021_03_23.bat'
##generate_new_bat('.',inname, outname, replacementlist6)
# done

######################################################################################################################
# crc gernation of scripts from pbmc

##replacementlist1 = [('covid19-pbmc-results', 'colorectal-cancer-results', ('covid19-pbmc', 'crc'), ('pbmc', 'crc'),('2021-03-14-laptop','2021-04-10-laptop'))]
##inname =  'script_covid19_pbmc_score_generation_nofda_posonly_2021_03_14.bat'
##outname = 'script_crc_score_generation_nofda_posonly_2021_04_10.bat'
##generate_new_bat('.', inname, outname, replacementlist1)
# done

##replacementlist1 = [('nofda', 'fdaonly'), ('--fdadrugsonly=False','--fdadrugsonly=True')]
##inname =  'script_crc_score_generation_nofda_posonly_2021_04_10.bat'
##outname = 'script_crc_score_generation_fdaonly_posonly_2021_04_10.bat'
##generate_new_bat('.', inname, outname, replacementlist1)
# done



#  pbmc to crc  , pval  . check by hand for extra filters and remove duplication of runs.
##replacementlist2 = [('covid19-pbmc-results', 'colorectal-cancer-results'), ('covid19-pbmc', 'crc'), ('pbmc', 'crc'),('2021-03-14-laptop','2021-04-10-laptop')]
##inname =     'script_covid19_pbmc_pval_generation_fdaonly_posonly_allfilters_2021_03_14.bat'
##outname =    'script_crc_pval_generation_fdaonly_posonly_allfilters_2021_04_10.bat'
##generate_new_bat('.', inname, outname, replacementlist2)
# done


##replacementlist5 = [('covid19-pbmc-results', 'colorectal-cancer-results'), ('covid19-pbmc', 'crc'), ('pbmc', 'crc'),('2021-03-14-laptop','2021-04-10-laptop')]
##inname =    'script_covid19_pbmc_pval_generation_nofda_posonly_allfilters_2021_03_14.bat'
##outname =   'script_crc_pval_generation_nofda_posonly_allfilters_021_04_10.bat'
##generate_new_bat('.', inname, outname, replacementlist5)
# done


#
##replacementlist7 = [('covid19-pbmc-results', 'colorectal-cancer-results'), ('covid19-pbmc', 'crc'), ('pbmc', 'crc'),('2021-03-14-laptop','2021-04-10-laptop')]
##inname =     'script_covid19_pbmc_pval_generation_nofda_nopos_2021_03_14.bat'
##outname =    'script_crc_pval_generation_nofda_nopos_021_04_10.bat'
##generate_new_bat('.', inname, outname, replacementlist7)
# done


##replacementlist4 = [('covid19-pbmc-results', 'colorectal-cancer-results'), ('covid19-pbmc', 'crc'), ('pbmc', 'crc'),('2021-03-14-laptop','2021-04-10-laptop')]
##inname =    'script_covid19_pbmc_pval_generation_fdaonly_nopos_2021_03_14.bat'
##outname =   'script_crc_pval_generation_fdaonly_nopos_021_04_10.bat'
##generate_new_bat('.',inname, outname, replacementlist4)
# done

#
##replacementlist3 = [('covid19-pbmc-results', 'colorectal-cancer-results'), ('covid19-pbmc', 'crc'), ('pbmc', 'crc'),('2021-03-14-laptop','2021-04-10-laptop')]
##inname =    'script_covid19_pbmc_pval_generation_fdaonly_posonly_2021_03_14.bat'
##outname =   'script_crc_pval_generation_fdaonly_posonly_021_04_10.bat'
##generate_new_bat('.', inname, outname, replacementlist3)
# done


##replacementlist6 = [('covid19-pbmc-results', 'colorectal-cancer-results'), ('covid19-pbmc', 'crc'), ('pbmc', 'crc'),('2021-03-14-laptop','2021-04-10-laptop')]
##inname =    'script_covid19_pbmc_pval_generation_nofda_posonly_2021_03_14.bat'
##outname =   'script_crc_pval_generation_nofda_posonly_2021_04_10.bat'
##generate_new_bat('.',inname, outname, replacementlist6)
# 

######################################################################################################################
# prc gernation of scripts from pbmc


##replacementlist1 = [('covid19-pbmc-results', 'prostate-cancer-results'), ('pbmc', 'prc'),('2021-03-14-laptop','2021-03-24-laptop')]
##inname =  'script_covid19_pbmc_score_generation_fdaonly_posonly_2021_03_14.bat'
##outname = 'script_prc_score_generation_fdaonly_posonly_2021_03_24.bat'
##generate_new_bat('.', inname, outname, replacementlist1)
# done


##replacementlist1 = [('--fdadrugsonly=True', '--fdadrugsonly=False'), ('-fdaonly-', '-nofda-')]
##inname =  'script_prc_score_generation_fdaonly_posonly_2021_03_24.bat'
##outname = 'script_prc_score_generation_nofda_posonly_2021_03_24.bat'
##generate_new_bat('.', inname, outname, replacementlist1)
# done



#  pbmc to prc  , pval  . check by hand for extra filters and remove duplication of runs.
##replacementlist2 = [('covid19-pbmc-results', 'prostate-cancer-results'), ('covid19-pbmc', 'prc'), ('pbmc', 'prc'),('2021-03-23-laptop','2021-03-24-laptop')]
##inname =     'script_covid19_pbmc_pval_generation_fdaonly_posonly_allfilters_2021_03_14.bat'
##outname =    'script_prc_pval_generation_fdaonly_posonly_allfilters_2021_03_24.bat'
##generate_new_bat('.', inname, outname, replacementlist2)
# done


##replacementlist5 = [('--mode=filteronly', '--mode=nofilter'), ('allposonly','nopos')]
##inname =    'script_prc_pval_generation_fdaonly_posonly_allfilters_2021_03_24.bat'
##outname =   'script_prc_pval_generation_fdaonly_nopos_2021_03_24.bat'
##generate_new_bat('.', inname, outname, replacementlist5)
# done


#
##replacementlist3 = [('allposonly','posonly')]
##inname =    'script_prc_pval_generation_fdaonly_posonly_allfilters_2021_03_24.bat'
##outname =   'script_prc_pval_generation_fdaonly_posonly_2021_03_24.bat'
##generate_new_bat('.', inname, outname, replacementlist3)
#done


#
##replacementlist7 = [('--fdadrugsonly=True', '--fdadrugsonly=False'), ('-fdaonly-', '-nofda-')]
##inname =     'script_prc_pval_generation_fdaonly_posonly_allfilters_2021_03_24.bat'
##outname =    'script_prc_pval_generation_nofda_posonly_allfilters_2021_03_24.bat'
##generate_new_bat('.', inname, outname, replacementlist7)
### done


##replacementlist4 =  [('--fdadrugsonly=True', '--fdadrugsonly=False'), ('-fdaonly-', '-nofda-')]
##inname =    'script_prc_pval_generation_fdaonly_nopos_2021_03_24.bat'
##outname =   'script_prc_pval_generation_nofda_nopos_2021_03_24.bat'
##generate_new_bat('.',inname, outname, replacementlist4)
# done


##replacementlist6 =  [('--fdadrugsonly=True', '--fdadrugsonly=False'), ('-fdaonly-', '-nofda-')]
##inname =    'script_prc_pval_generation_fdaonly_posonly_2021_03_24.bat'
##outname =   'script_prc_pval_generation_nofda_posonly_2021_03_24.bat'
##generate_new_bat('.',inname, outname, replacementlist6)
#  


#######################################################################################################
#
# merge 3 covdi19 data sets single algorithms in pbmc filder


#  
##replacementlist2 = [('pbmc-2021', 'all-2021'),('test', 'merge'),('2021-03-14-laptop','2021-03-24-laptop')]
##inname =     'script_covid19_pbmc_pval_generation_fdaonly_posonly_allfilters_2021_03_14.bat'
##outname =    'script_covid19_all_pval_merge_fdaonly_posonly_allfilters_2021_03_24.bat'
##generate_new_bat('.', inname, outname, replacementlist2)
# done 


##replacementlist2 = [('--fdadrugsonly=True', '--fdadrugsonly=False'),('-fdaonly-', '-nofda-'),]
##inname =     'script_covid19_all_pval_merge_fdaonly_posonly_allfilters_2021_03_24.bat'
##outname =    'script_covid19_all_pval_merge_nofda_posonly_allfilters_2021_03_24.bat'
##generate_new_bat('.', inname, outname, replacementlist2)
# done


############################################################################################
# script for score merge  covid19 single alg multiple data.. from nofda version to fdaonly version

##replacementlist2 = [('--fdadrugsonly=False', '--fdadrugsonly=True'),('-nofda-', '-fdaonly-'),]
##inname =     'script_covid19_all_data_score_merge_nofda_posonly_2021_03_26.bat'
##outname =    'script_covid19_all_data_score_merge_fdaonly_posonly_2021_03_26.bat'
##generate_new_bat('.', inname, outname, replacementlist2)
# done

#################################################################
# replacing the separator of a cvs file

##replacementlist2 = [(',', ''),(';', ',')]
##inname =     'prova-table-4.csv'
##outname =    'prova-table-5-comma.csv'
##generate_new_bat('.', inname, outname, replacementlist2)
# done

##replacementlist2 = [(' ', ','),(';', ' ')]
##inname =     'prova-table-4.csv'
##outname =    'prova-table-6-space.csv'
##generate_new_bat('.', inname, outname, replacementlist2)

##replacementlist2 = [(';', '\t')]
##inname =     'prova-table-4.csv'
##outname =    'prova-table-7-tab.csv'
##generate_new_bat('.', inname, outname, replacementlist2)



########################################################
# transform al bat scripts into sh script files..

##replacementlist2 = [('::', '#'),
##                    ('@ECHO OFF', '#!/bin/csh'),
##                    ('ECHO', 'echo'),
##                    ('drugranking_by_direction.py','python drugranking_by_direction.py'),
##                    ('drugranking.py','python drugranking.py'),
##                    ('%','$'),
##                    ('$ ',' '),
##                    ('PAUSE','sleep'),
##                    ('(','\('),
##                    (')','\)'),
##                    ('SET ',''),
##                    ('.txt', '.txt  &')]
##
##inname =     'script_arthritis_pval_generation_fdaonly_posonly_2021_02_02.bat'
##outname =    'script_arthritis_pval_generation_fdaonly_posonly_2021_02_02.sh'
##generate_new_bat('.', inname, outname, replacementlist2)


#########################################################
# change all .bat files into .sh file

def convertallbat_to_sh() :

    replacementlist2 = [('::', '#'),
                    ('@ECHO OFF', '#!/bin/csh'),
                    ('ECHO', 'echo'),
                    ('drugranking_by_direction.py','python drugranking_by_direction.py'),
                    ('drugranking.py','python drugranking.py'),
                    ('%','$'),
                    ('$ ',' '),
                    ('PAUSE','sleep'),
                    ('(','\('),
                    (')','\)'),
                    ('SET ',''),
                    ('.txt', '.txt  &')]


    l1 = listfilestatus('.')
    l2 = suffixmatch(l1, '.bat')
    print l2
    for x in l2 :
        inname = x
        outname = x.replace('.bat', '.sh')
        generate_new_bat('.', inname, outname, replacementlist2)

#
#convertallbat_to_sh()
    
