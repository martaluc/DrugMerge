##########################################################
#
#
# 

##############################################
# import file handling utils

from file_handling_util import testexistencedirectory, testexistencefile


##############################################
#string normalization, repalce common separators line space - and _ with jsut _

def stringnormalize(s) :
    
    s1 = s.split()
    s2= '_'.join(s1)
    s3 = s.split('-')
    s4= '_'.join(s3)
#    print "normalization", s, s4
    return s4
    
##########################################################

def stringnormalize2(s) :
    
    s1 = s.replace(' ', '_')
    s2=  s1.replace('-','_')
    s3=  s2.replace(',', '_')
    s4=  s3.replace("'", '_')    
#    print "normalization", s, s4
    return s4



####################################################

def converttofloat(s):
    a = s.split('e')
    if len(a) == 1 :
        a = s.split('E')
        
#    print s, a

    if len(a) == 2 :
        return float(a[0].replace(',','.')) * (10 ** int(a[1]))
    elif len(a) == 1 :
        return float(a[0].replace(',','.'))
    else :
        print "not well formed", s
        assert False

# for use in DM data 

def subparse(s) :

    b = s.split('-')
    if len(b) == 2 :
        return b[0].lower()
    elif len(b) == 3 :
        x = b[0]+'-'+b[1]
        return x.lower()
    elif len(b) == 4 :
        x = b[0]+'-'+b[1]+'-'+b[2]
        return x.lower()
    elif len(b) == 5 :
        x = b[0]+'-'+b[1]+'-'+b[2]+'-'+b[3]
        return x.lower()
    
    else :
        print "not processed ", b
        return None

# for use in L100 data
def subparse2(s) :

    b = s.split('-')
    b1= b[1:]
    b2= b1[:-1]
#    print b2
    return stringnormalize2('_'.join(b2))

# for use in CMAP

def subparse3(s) :

    b = s.split('-')
    b1= b[:-1]
#    print b1
    return stringnormalize2('_'.join(b1))


def findindex(inlist, specieslist) :

    j = 0 
    for i in range(len(inlist)):
        if inlist[i] in specieslist :
            j=i
            break
    return j

         

def extractdrugstring(s, fileformat) :

    a = s.split(' ')
    la = len(a)
    oraganismslist = ('homo', 'mus','rattus', 'bos', 'sus', 'macaca', 'oncorhynchus', 'myzus', 'human', 'mouse', 'rat',  'dictyostelium', 'escherichia', 'pseudomonas', 'staphylococcus', 'danio', 'drosophila', 'oryzias', 'mycobacterium', 'escherichia', 'caenorhabditis', 'hordeum')
    if fileformat == 'GEO' :
        if la >= 2 :
            if a[1] in  oraganismslist :
#                print 'drug', a[0]
                return a[0]
        if la >= 3:
            if a[2] in oraganismslist :
#                print 'drug', a[0]+'_'+a[1]
                return a[0]+'_'+a[1]
            
        if la >= 4:
            if a[3] in oraganismslist :
#                print 'drug', a[0]+'_'+a[1]
                return a[0]+'_'+a[1]+'_'+a[2]
        
        print "not processed ", a
        return None


    if fileformat == 'GEOtaguchi' :
        if la >= 2 :
            if a[1] in  oraganismslist :
#                print 'drug', a[0]
                return a[0]
        if la >= 3:
            if a[2] in oraganismslist :
#                print 'drug', a[0]+'_'+a[1]
                return a[0]
            
        if la >= 4:
            if a[3] in oraganismslist :
#                print 'drug', a[0]+'_'+a[1]
                return a[0]+'_'+a[1]

        if la >= 5:
            if a[4] in oraganismslist :
#                print 'drug', a[0]+'_'+a[1]
                return a[0]+'_'+a[1]+'_'+a[2]

        if la >= 6 :
            j = findindex(a, oraganismslist)
            if j > 0 :
                return a[0]


    if fileformat == 'L1000taguchi' :
        drugstring = a[-1]
#        print drugstring
        return subparse2(drugstring)


    if fileformat == "L1000" :
        drugstring = a[-1]
        return subparse2(drugstring)
        
        
        print "not processed ", a
        return None



    
    
    if fileformat in [ 'DM', 'DMtaguchi'] :
        splitstring = ('mg/kg', 'uM', 'ng/ml', 'um')
        if la >= 2 :
            if a[1] in splitstring  :
#                print a[0]
                return subparse(a[0])
        if la >= 3:    
            if a[2] in splitstring :
                ss = a[0]+'_'+a[1]
#                print ss
                return subparse(ss)

        if la >= 4:
            if a[3] in splitstring :
                ss = a[0]+'_'+a[1]+'_'+a[2]
#                print ss
                return subparse(ss)

        if la >= 5:
            if a[4] in splitstring :
                ss = a[0]+'_'+a[1]+'_'+a[2]+'_'+a[3]
#                print ss
                return subparse(ss)
            
            
        
        print "partial processed ", a
        return a[0].lower()
         
        
            
##################################################################
# list of non-drugs to be eliminated from teh file in uploading

listtoxicsubstances = [
    'arsenic_trioxide',
    'ethanol',
    '4-octylphenol',
    'phenol',
    'soman',
    '7',
    '23',
    '11',
    's1148',
    's1093',
    'ite',
    'cc_100',
    'fit',
    '201',
    's_250',
    'tartrate',
    'acetate',
    'c_1',
    ')',
    'pit',
    'sc_10',
    'aicar',
    'palda',
    ]


#############################################
# function to parse L1000 files from enrichR

def mysplit(s, fileformat):
    
#    print s, fileformat
    
    if fileformat in  ['L1000up-covid19', 'L1000down-covid19', 'L1000updown-covid19'] :

        ss = s.split('"')
#        print ss
        drugstring = subparse2(ss[1])
    #    print drugstring
        sss = ss[4]
        ssss = sss.split(',')
    #    print ssss
    #    print ssss[2]
        pval = ssss[2]


    elif  fileformat in  ['L1000up', 'L1000down', 'L1000updown'] :

        ss = s.split('"')
    #    print ss
        drugstring = subparse2(ss[3])
    #    print drugstring
        sss = ss[6]
        ssss = sss.split(',')
    #    print ssss
    #    print ssss[2]
        pval = ssss[2]


    elif fileformat in  ['CMAPup-covid19', 'CMAPdown-covid19', 'CMAPupdown-covid19'] :
#        print s, fileformat

        ss = s.split('"')
#        print ss
        drugstring = subparse3(ss[1])
    #    print drugstring
        sss = ss[4]
        ssss = sss.split(',')
#        print ssss
    #    print ssss[2]
        pval = ssss[2]


    elif  fileformat in  ['CMAPup', 'CMAPdown', 'CMAPupdown'] :

        ss = s.split('"')
#        print ss
        drugstring = subparse3(ss[3])
    #    print drugstring
        sss = ss[6]
        ssss = sss.split(',')
#        print ssss
    #    print ssss[2]
        pval = ssss[2]

       

    else :
        print "Wrong file format directive : ", fileformat
        assert False
    
    return (drugstring, pval)


def splitfilenameL1000(fname) :

    s = fname.split('_')
    t= []
    for i in range(len(s)):
        if s[i] == 'up' :
            t.append('down')
        elif s[i] == 'up.csv' :
            t.append('down.csv')
        elif s[i]== 'down' :
            t.append('up')
        elif s[i]== 'down.csv' :
            t.append('up.csv')            
        else :
            t.append(s[i])
            
    return '_'.join(t)
    
    

def parsefileL1000onefile(indirectory, infilename, fileformat):
    
    print "*****************************************"
    print "Opening ", indirectory, infilename
    print "Our format record: (index, drug, pvalue)"
    f = open(indirectory + '/'+infilename, 'r')
    ss = f.readline()
#    print ss
    ss = f.readline()

    linenumber = 0
    lista = []
    while ss != '' :
        (drugstring, pval) = mysplit(ss, fileformat)
        record = [linenumber, drugstring, converttofloat(pval)]
        lista.append(record)
#        print record



        ss = f.readline()
        linenumber += 1
        
    f.close()
    return lista

########################################
#
# second file may be missing

def parsefileL1000(indirectory, infilename, fileformat) :

    if fileformat in ['L1000up', 'L1000down', 'L1000up-covid19', 'L1000down-covid19', 'CMAPup', 'CMAPdown', 'CMAPup-covid19', 'CMAPdown-covid19']:
        list1 = parsefileL1000onefile(indirectory, infilename, fileformat)
        return list1
    else: 
        list1 = parsefileL1000onefile(indirectory, infilename, fileformat)
        filename2 =  splitfilenameL1000(infilename)
        if testexistencefile(indirectory, filename2):
            list2 = parsefileL1000onefile(indirectory, filename2, fileformat)
            print "Present both files ", infilename, filename2
            return list1+list2
        else :
            print "Warning Mising second file ", filename2
            return list1
#            assert False
        
    


################################################



# laod the dat from file and produce the raw list

#filetype = 'original', 'posttrialfilter'

def parsefile(indirectory, infilename, filetype, fileformat) :

    if fileformat in  ['L1000up', 'L1000down', 'L1000updown', 'L1000up-covid19', 'L1000down-covid19', 'L1000updown-covid19' ]:
        list1 = parsefileL1000(indirectory, infilename, fileformat)
        return list1

    

    if filetype == 'original' :
        rankidx = 0
        drugidx=1
        pvalidx = 3
        separator =','

    elif filetype == 'original2' :
        rankidx = 0
        drugidx=1
        pvalidx = 3
        separator =';'
        
    elif filetype == 'posttrialfilter' :
        rankidx = 1
        drugidx=2
        pvalidx = 4
        separator =','
        
    elif filetype == 'taguchi' :
        rankidx = None
        drugidx= 0
        pvalidx = 2
        separator = ";"

##    elif filetype == 'L1000' :
##        rankidx = None
##        drugidx= 1
##        pvalidx = 3
##        separator = '","'
        
        
    else :
        print "option error ", filetype
        assert False

    testexistencedirectory(indirectory)
    testexistencefile(indirectory, infilename)
        
    print "*****************************************"
    print "Opening ", indirectory, infilename
    print "Our format record: (index, drug, pvalue)"
    f = open(indirectory + '/'+infilename, 'r')
    ss = f.readline()
#    print ss
    ss = f.readline() 
#    print ss
#    ss1 = ss.strip().split('\t')
#    print ss1
    counter = 0
    lista = []
#    lista.append(ss1)

    linenumber = 0
    while ss != '' :
##        print "************************"
#        ss = f.readline()
#        print ss
        ss1 = ss.strip().split(separator)
#        print ss1
        pval =  converttofloat(ss1[pvalidx].strip('"'))
        drug = extractdrugstring(ss1[drugidx].strip('"'), fileformat)
        if rankidx == None:
            ss2 = [linenumber,drug, pval]
        else : 
            ss2 = [int(ss1[rankidx].strip('"')),drug, pval]
#        print 'outrecord', ss2

        if drug not in listtoxicsubstances :
            lista.append(ss2)
            counter +=1
        else :
            print "Removed toxic : ", drug
            
        ss = f.readline()
        linenumber += 1
#        print ss

    assert counter == len(lista)
    print "total num items including duplicates", counter
    return lista


# testing toguchi
#parsefile('../Papers-drugs/Taguchi-2020-suppl-tables',  'taguchi-journal.pone.0238907.s035-DM-2.csv', 'taguchi', 'DM')


#################################################################################
#
# new parsing function with jsut one file parsing directive field to control all aspects


def newparsefile(indirectory, infilename,  fileformat) :
    
    newfileformats = ['L1000up',
                      'L1000down',
                      'L1000updown',
                      'L1000up-covid19',
                      'L1000down-covid19',
                      'L1000updown-covid19',
                      'CMAPup',
                      'CMAPdown',
                      'CMAPupdown',
                      'CMAPup-covid19',
                      'CMAPdown-covid19',
                      'CMAPupdown-covid19',
                      ]

    if fileformat in newfileformats :
        list1 = parsefileL1000(indirectory, infilename, fileformat)
        return list1

    

    if fileformat in ['GEO', 'DM'] :
        rankidx = 0
        drugidx=1
        pvalidx = 3
        separator =','

##    elif fileformat in ['L1000taguchi',] :
##        rankidx = 0
##        drugidx=1
##        pvalidx = 3
##        separator =';'
        
        
    elif fileformat in ['GEOtaguchi', 'L1000taguchi', 'DMtaguchi'] :
        rankidx = None
        drugidx= 0
        pvalidx = 2
        separator = ";"

##    elif filetype == 'L1000' :
##        rankidx = None
##        drugidx= 1
##        pvalidx = 3
##        separator = '","'
        
        
    else :
        print "File format string error ", fileformat
        assert False

    testexistencedirectory(indirectory)
    testexistencefile(indirectory, infilename)
        
    print "*****************************************"
    print "Opening ", indirectory, infilename
    print "Our format record: (index, drug, pvalue)"
    f = open(indirectory + '/'+infilename, 'r')
    ss = f.readline()
#    print ss
    ss = f.readline() 
#    print ss
#    ss1 = ss.strip().split('\t')
#    print ss1
    counter = 0
    lista = []
#    lista.append(ss1)

    linenumber = 0
    while ss != '' :
##        print "************************"
#        ss = f.readline()
#        print ss
        ss1 = ss.strip().split(separator)
#        print ss1
        pval =  converttofloat(ss1[pvalidx].strip('"'))
        drug = extractdrugstring(ss1[drugidx].strip('"'), fileformat)
        if rankidx == None:
            ss2 = [linenumber,drug, pval]
        else : 
            ss2 = [int(ss1[rankidx].strip('"')),drug, pval]
#        print 'outrecord', ss2

        if drug not in listtoxicsubstances :
            lista.append(ss2)
            counter +=1
        else :
            print "Removed toxic : ", drug
            
        ss = f.readline()
        linenumber += 1
#        print ss

    assert counter == len(lista)
    print "total num items including duplicates", counter
    return lista
