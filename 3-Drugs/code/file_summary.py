# this code takes the log files in a diretory and parse them to extract the data to be
# diplayed
# initially as row data, in perspective as cvs or latex tables.
#

import os
import time
import datetime

from file_handling_util import testexistencedirectory, testexistencefile


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

#################################################
# parse file enrated byt he second command

def parseforevaluationdata2(filename, path) :

    f = open(os.path.join(path,filename), 'r')
    out = []
    ss = f.readline()
#    print ss
    while ss != '' :
        if ss[:5]== "Confs" :
            conf = ss.strip()
        if ss[:2] == "('" or ss[:3] == '("(' :
#            print ss
            out.append(ss.strip())
        ss = f.readline()
#    print out[:-1]
#    print out[-1]
    print out[-1], conf, out[:-1]
    f.close()


####################################################
# parse file gnerated by the first comamnd

def parseforevaluationdata1(filename, path) :

    f = open(os.path.join(path,filename), 'r')
    out = []
    ss = f.readline()
#    print ss
    while ss != '' :
#        if ss[:5]== "Confs" :
#            conf = ss.strip()
        if ss[:2] == "('" or ss[:3] == '("(' :
#            print ss
            out.append(ss.strip())
        ss = f.readline()
#    print out[:-1]
#    print out[-1]
    print out[-1],  out[:-1]
    f.close()


#################################################

def parseforcoveringdata(filename, path) :

    f = open(os.path.join(path,filename), 'r')
    
    out = []
    ss = f.readline()
    mode = 0
#    print ss
    while ss != '' :

        if mode == 0 and ss[:13]== "Drug covering" :
            mode = 1
        elif mode == 0 and ss[:13] != "Drug covering" :
            pass
        elif mode == 1 and ss[:14] != "No merge-cover":
#            print ss
            out.append(ss.strip())
        elif mode == 1 and ss[:14] == "No merge-cover":
            mode = 0
        else :
            print "wrong mode", mode
            assert False
            
        ss = f.readline()
        
    print "##########################################"
    print filename   
    for x in out :
        if x[:4] == "drug":
            print x.split()[2:]
        else : 
            print x
    print "##########################################"
    f.close()

##################################################################
# funtion for merge data ouptu only the merged data

def parseforcoveringmergedata(filename, path) :

    f = open(os.path.join(path,filename), 'r')
    
    out = []
    ss = f.readline()
    mode = 0
#    print ss
    while ss != '' :

        if mode == 0 and ss[:30]== "Begin exectuing of merge-cover" :
            mode = 1
        elif mode == 0 and ss[:30] != "Begin exectuing of merge-cover" :
            pass
        elif mode == 1 :
#            print ss
            out.append(ss.strip())
        else :
            print "wrong mode", mode
            assert False
            
        ss = f.readline()
        
    print "##########################################"
    print filename   
    for x in out :
        if x[:4] == "drug":
            print x.split()[2:]
        else : 
            print x
    print "##########################################"
    f.close()







##################################
    
def parsedirectoryforevaluationdata(path, typefile):
    
    if testexistencedirectory(path) :
        filenames = listfilestatus(path)
        for x in filenames :
            if typefile == 'filter2':
                parseforevaluationdata2(x, path)
            elif typefile == 'filter1':
                parseforevaluationdata1(x, path)                
            elif typefile == 'covering':
                parseforcoveringdata(x, path)
            elif typefile == 'coveringmerge':
                parseforcoveringmergedata(x, path)
                
            else :
                print "Wrong type ", typefile
                

    
# running test
#############################################################

# balf - filter generation data : 24 files
#path = '../Results-covid19-balf-2020-12-03/Results-balf-filter-generation-2020-11-29'
#parsedirectoryforevaluationdata(path, 'filter2')

# balf - drug combination  generation data : 24 files
#path='../Results-covid19-balf-2020-12-03/Results-balf-drug-combination-generation-2020-11-30'
#parsedirectoryforevaluationdata(path, 'covering')

# balf filter merging 8 files
#path = '../Results-covid19-balf-2020-12-03/Results-balf-filter-merging-2020-11-30'
#parsedirectoryforevaluationdata(path, 'filter2')

# balf pvalue rannking with positivity filter
#path = '../Results-covid19-balf-2020-12-03/Results-balf-pvalue-generation-2020-12-01'
#parsedirectoryforevaluationdata(path, 'filter1')

# balf pvalue ranking merge  with positivity filter
#path = '../Results-covid19-balf-2020-12-03/Results-balf-pvalue-merge-2020-12-01'
#parsedirectoryforevaluationdata(path, 'filter1')

# balf pvalue rannking with positivity filter nofilter data 
#path = '../Results-covid19-balf-2020-12-03/Results-balf-pvalue-generation-nofilter-2020-12-01'
#parsedirectoryforevaluationdata(path, 'filter1')

# balf pvalue ranking merge  with positivity filter nofilter data 
#path = '../Results-covid19-balf-2020-12-03/Results-balf-pvalue-merge-nofilter-2020-12-01'
#parsedirectoryforevaluationdata(path, 'filter1')

# balf single run covering of drugs
#path = '../Results-covid19-balf-2020-12-03/Results-balf-filter-covering-2020-12-02'
#parsedirectoryforevaluationdata(path, 'covering')

# balf multiple runs covering of drugs


# balf - pvalue generation data nopositive nor fda drugs : 16 files
#path = '../Results-covid19-balf-2020-12-03/Results-balf-pvalue-nopositive-nofdadrugs-2020-12-08'
#parsedirectoryforevaluationdata(path, 'filter1')


# balf - score generation data nopositive nor fda drugs : 16 files
#path = '../Results-covid19-balf-2020-12-03/Results-balf-score-nopositive-nofdadrugs-2020-12-08'
#parsedirectoryforevaluationdata(path, 'filter2')

# balf - score generation data positive nor fda drugs : 16 files
#path = '../Results-covid19-balf-2020-12-03/Results-balf-score-positive-nofdadrugs-2020-12-14'
#parsedirectoryforevaluationdata(path, 'filter2')



##############################################################
# asthma 2020-12-03

# asthma - score generation data : 16 files
#path = '../Results-asthma-2020-12-03/Results-asthma-score-generation-2020-12-03'
#parsedirectoryforevaluationdata(path, 'filter2')
#parsedirectoryforevaluationdata(path, 'covering')

# asthma - score merge data : 8 files
#path = '../Results-asthma-2020-12-03/Results-asthma-score-merge-2020-12-03'
#parsedirectoryforevaluationdata(path, 'filter2')
#parsedirectoryforevaluationdata(path, 'covering')

# asthma - pvalue generation data : 16 files
#path = '../Results-asthma-2020-12-03/Results-asthma-pvalue-generation-2020-12-03'
#parsedirectoryforevaluationdata(path, 'filter1')

# asthma - pvalue merge data : 4 files
#path = '../Results-asthma-2020-12-03/Results-asthma-pvalue-merge-2020-12-03'
#parsedirectoryforevaluationdata(path, 'filter1')

# asthma - score generation data nopositive nor fda drugs : 16 files
#path = '../Results-asthma-2020-12-03/Results-asthma-score-nopositive-nofdadrugs-2020-12-03'
#parsedirectoryforevaluationdata(path, 'filter2')

# asthma - pvalue generation data nopositive nor fda drugs : 16 files
#path = '../Results-asthma-2020-12-03/Results-asthma-pvalue-nopositive-nofdadrugs-2020-12-03'
#parsedirectoryforevaluationdata(path, 'filter1')

####################################################################
# rheumatoid rthritis 2020-12-04


# arthritis - pvalue generation data nopositive nor fda drugs : 10 files
#path = '../Results-arthritis-2020-12-04/Results-arthritis-pvalue-nopositive-nofdadrugs-2020-12-04'
#parsedirectoryforevaluationdata(path, 'filter1')

# arthritis - score generation data nopositive nor fda drugs : 14 files
#path = '../Results-arthritis-2020-12-04/Results-arthritis-score-nopositive-nofdadrugs-2020-12-04'
#parsedirectoryforevaluationdata(path, 'filter2')

# arthritis - score generation data : 16 files
#path = '../Results-arthritis-2020-12-04/Results-arthritis-score-generation-2020-12-05'
#parsedirectoryforevaluationdata(path, 'filter2')
#parsedirectoryforevaluationdata(path, 'covering')

# arthritis - pvalue generation data : 20 files
#path = '../Results-arthritis-2020-12-04/Results-arthritis-pvalue-generation-2020-12-05'
#parsedirectoryforevaluationdata(path, 'filter1')

# arthritis - pvalue merge data : 
#path = '../Results-arthritis-2020-12-04/Results-arthritis-pvalue-merge-2020-12-05'
#parsedirectoryforevaluationdata(path, 'filter1')

# arthritis - score merge data : 
#path = '../Results-arthritis-2020-12-04/Results-arthritis-score-merge-2020-12-05'
#parsedirectoryforevaluationdata(path, 'filter2')
#parsedirectoryforevaluationdata(path, 'coveringmerge')


#####################################################################################
# crc  colorectal cancer 2020-12-06

# crc - pvalue generation data nopositive nor fda drugs : 9 files
#path = '../Results-colorectalcancer-2020-12-06/Results-crc-pvalue-nopositive-nofdadrugs-2020-12-06'
#parsedirectoryforevaluationdata(path, 'filter1')


# crc - score generation data nopositive nor fda drugs : 16 files
#path = '../Results-colorectalcancer-2020-12-06/Results-crc-score-nopositive-nofdadrugs-2020-12-06'
#parsedirectoryforevaluationdata(path, 'filter2')

# crc - score generation data : 16 files
#path = '../Results-colorectalcancer-2020-12-06/Results-crc-score-generation-2020-12-06'
#parsedirectoryforevaluationdata(path, 'filter2')
#parsedirectoryforevaluationdata(path, 'covering')


# crc - pvalue generation data : 18 files
#path = '../Results-colorectalcancer-2020-12-06/Results-crc-pvalue-generation-2020-12-06'
#parsedirectoryforevaluationdata(path, 'filter1')

# crc - pvalue merge data : 
#path = '../Results-colorectalcancer-2020-12-06/Results-crc-pvalue-merge-2020-12-06'
#parsedirectoryforevaluationdata(path, 'filter1')

# crc - score merge data : 
#path = '../Results-colorectalcancer-2020-12-06/Results-crc-score-merge-2020-12-06'
#parsedirectoryforevaluationdata(path, 'filter2')
#parsedirectoryforevaluationdata(path, 'coveringmerge')



#####################################################################################
# prc  prostate cancer 2020-12-06


# crc - pvalue generation data nopositive nor fda drugs : 9 files
#path = '../Results-prostatecancer-2020-12-06/Results-prc-pvalue-nopositive-nofdadrugs-2020-12-06'
#parsedirectoryforevaluationdata(path, 'filter1')


# crc - score generation data nopositive nor fda drugs : 16 files
#path = '../Results-prostatecancer-2020-12-06/Results-prc-score-nopositive-nofdadrugs-2020-12-06'
#parsedirectoryforevaluationdata(path, 'filter2')

# crc - score generation data : 16 files
#path = '../Results-prostatecancer-2020-12-06/Results-prc-score-generation-2020-12-06'
#parsedirectoryforevaluationdata(path, 'filter2')
#parsedirectoryforevaluationdata(path, 'covering')


# crc - pvalue generation data : 20 files
#path = '../Results-prostatecancer-2020-12-06/Results-prc-pvalue-generation-2020-12-06'
#parsedirectoryforevaluationdata(path, 'filter1')

# crc - pvalue merge data : 
#path = '../Results-prostatecancer-2020-12-06/Results-prc-pvalue-merge-2020-12-06'
#parsedirectoryforevaluationdata(path, 'filter1')

# crc - score merge data : 
#path = '../Results-prostatecancer-2020-12-06/Results-prc-score-merge-2020-12-06'
#parsedirectoryforevaluationdata(path, 'filter2')
#parsedirectoryforevaluationdata(path, 'coveringmerge')


#########################################################################
# covid19 - cells data


# covid19 - cells - pvalue generation data nopositive nor fda drugs : 9 files
#path = '../Results-covid19-cells-2020-12-07/Results-covid19-cells-pvalue-nopositive-nofdadrugs-2020-12-07'
#parsedirectoryforevaluationdata(path, 'filter1')


# covid19 - cells - score generation data nopositive nor fda drugs : 16 files
#path = '../Results-covid19-cells-2020-12-07/Results-covid19-cells-score-nopositive-nofdadrugs-2020-12-07'
#parsedirectoryforevaluationdata(path, 'filter2')

# covid19 - cells - score generation data : 16 files
#path = '../Results-covid19-cells-2020-12-07/Results-covid19-cells-score-generation-2020-12-07'
#parsedirectoryforevaluationdata(path, 'filter2')
#parsedirectoryforevaluationdata(path, 'covering')


# covid19 - cells - pvalue generation data : 20 files
#path = '../Results-covid19-cells-2020-12-07/Results-covid19-cells-pvalue-generation-2020-12-07'
#parsedirectoryforevaluationdata(path, 'filter1')

#covid19 - cells - pvalue merge data : 
#path = '../Results-covid19-cells-2020-12-07/Results-covid19-cells-pvalue-merge-2020-12-07'
#parsedirectoryforevaluationdata(path, 'filter1')

# covid19 - cells - score merge data : 
#path = '../Results-covid19-cells-2020-12-07/Results-covid19-cells-score-merge-2020-12-07'
#parsedirectoryforevaluationdata(path, 'filter2')
#parsedirectoryforevaluationdata(path, 'coveringmerge')



#########################################################################
# covid19 - pbmc data


# covid19 - pbmc - pvalue generation data nopositive nor fda drugs : 9 files
#path = '../Results-covid19-pbmc-2020-12-08/Results-covid19-pbmc-pvalue-nopositive-nofdadrugs-2020-12-08'
#parsedirectoryforevaluationdata(path, 'filter1')


# covid19 - pbmc - score generation data nopositive nor fda drugs : 16 files
#path = '../Results-covid19-pbmc-2020-12-08/Results-covid19-pbmc-score-nopositive-nofdadrugs-2020-12-08'
#parsedirectoryforevaluationdata(path, 'filter2')

# covid19 - pbmc - score generation data : 16 files
#path = '../Results-covid19-pbmc-2020-12-08/Results-covid19-pbmc-score-generation-2020-12-08'
#parsedirectoryforevaluationdata(path, 'filter2')
#parsedirectoryforevaluationdata(path, 'covering')


# covid19 - pbmc - pvalue generation data : 20 files
#path = '../Results-covid19-pbmc-2020-12-08/Results-covid19-pbmc-pvalue-generation-2020-12-08'
#parsedirectoryforevaluationdata(path, 'filter1')

#covid19 - pbmc - pvalue merge data : 
#path = '../Results-covid19-pbmc-2020-12-08/Results-covid19-pbmc-pvalue-merge-2020-12-08'
#parsedirectoryforevaluationdata(path, 'filter1')

# covid19 - pbmc - score merge data : 
#path = '../Results-covid19-pbmc-2020-12-08/Results-covid19-pbmc-score-merge-2020-12-08'
#parsedirectoryforevaluationdata(path, 'filter2')
#parsedirectoryforevaluationdata(path, 'coveringmerge')


######################################################################
# mixed covid19 cases

# single algs on 3 DEG data sets 
#path = '../Results-covid19-balf-cells-pbmc-2020-12-08/Results-covid19-score-single-algorithms-2020-12-08'
#parsedirectoryforevaluationdata(path, 'filter2')
#parsedirectoryforevaluationdata(path, 'coveringmerge')

# 3 algs on 3 DEG data sets
#path = '../Results-covid19-balf-cells-pbmc-2020-12-08/Results-covid19-score-three-algorithms-2020-12-09'
#parsedirectoryforevaluationdata(path, 'filter2')
#parsedirectoryforevaluationdata(path, 'coveringmerge')


# all algs on 3 DEG data sets
#path = '../Results-covid19-balf-cells-pbmc-2020-12-08/Results-covid19-pvalue-all-algs-three-datasets-2020-12-09'
#parsedirectoryforevaluationdata(path, 'filter1')

######################################################################
# mixed covid19 cases no fda filter



# all algs on 3 DEG data sets
#path = '../Results-covid19-balf-cells-pbmc-2020-12-08/Results-covid19-pvalue-nofdadrugs-all-algs-three-datasets-2020-12-14'
#parsedirectoryforevaluationdata(path, 'filter1')

