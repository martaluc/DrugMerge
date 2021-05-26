############################################
#
# 2020-11-24. Code for find drugs covering mulple modules in multple graphs.
#

import math
import  copy

################################################
# generic utilities
from generic_util import printmap, printlist


###########################
# handling a single record

def scoreonerecord2(record, scoretype) :

    if scoretype not in ['deltadeg', 'size_x_deltadeg']:
        print "function not implemented ", scoretype
        assert False

    drugdirection = record[2]
    upcount = record[4]
    downcount = record[5]
    module_size = record[6]

    sc = 0 

    if     drugdirection == 'down':
        if scoretype == 'deltadeg' :
            sc =   upcount - downcount 
        elif scoretype ==  'size_x_deltadeg' :
            sc =   module_size * ( upcount - downcount )
        else :
            print "function not implemented ", scoretype
            assert False 
            
    elif   drugdirection == 'up':
        if scoretype == 'deltadeg' :
            sc =  downcount -  upcount
        elif scoretype ==  'size_x_deltadeg' :
            sc =  module_size * ( downcount -  upcount )
        else :
            print "function not implemented ", scoretype
            assert False 
  
    else :
        print "format error ", record
        assert False

    return sc


def score2(ll, scoretype) :
    sc = 0
    if len(ll) == 0 :
        return 0

    for x in ll :
        sc += scoreonerecord2(x, scoretype)

    return float(sc)/float(len(ll))
  

# function to build  positiv and negative interaction maps from drugs
# to mudules id

def buildposandnegmaps(drug_module_map, scoretype) :

#    scoretype = 'size_x_deltadeg'
#    scoretype = 'deltadeg'
    
    posmap = {}
    posscoresmap = {}
    negmap = {}
    negscoresmap = {}

    for x in drug_module_map.keys() :
        drugname = x[1]
        modulename = x[0]
        if drugname not in posmap.keys():
            posmap[drugname] = []
        if drugname not in negmap.keys():
            negmap[drugname] = []        
        
        # determine the direction of the action of the drug on the module
        res = score2(drug_module_map[x], scoretype)
        if res > 0 :
            posmap[drugname].append(modulename)
            posscoresmap[x] = res
        elif res < 0 :
            negmap[drugname].append(modulename)
            negscoresmap[x] = res

    return (posmap, negmap, posscoresmap, negscoresmap)


######################################################
#
# utility to find out a key with assocaited a lsit of maximum lenght in a dictionary
#
# one map

def argmaxkeyvaluedizlength(diz) :

    settato = 0
    for k, v in diz.iteritems() :
        if settato == 0 :
            keymax = k
            value = len(v)
            settato = 1
            tie = 0
        elif (len(v) > value) :
            keymax, value = k , len(v)
            tie = 0
        elif len(v) == value :
            tie = 1
            
    return keymax, value, tie

# two maps

def argmaxkeyvaluedizlength2(dizpos, dizneg) :

    settato = 0
    for k, v in dizpos.iteritems() :
        residual = len(v) - len(dizneg[k])
        if settato == 0 :
            keymax = k
            value = residual
            settato = 1
            tie = 0
        elif (residual > value) :
            keymax, value = k , residual
            tie = 0
        elif residual == value :
            tie = 1
            
    return keymax, len(dizpos[keymax]) , tie 


# two maps weighted

def argmaxkeyvaluedizlength3(dizpos, dizneg, weightspos, weightsneg) :

    settato = 0
    for k, v in dizpos.iteritems() :
        
#        residual = len(v) - len(dizneg[k])
        residual = math.fsum([weightspos[(i,k)] for i in v]) + math.fsum([weightsneg[(i,k)] for i in dizneg[k]])
        
        if settato == 0 :
            keymax = k
            value = residual
            settato = 1
            tie = 0
        elif (residual > value) :
            keymax, value = k , residual
            tie = 0
        elif residual == value :
            tie = 1
            
    return keymax, len(dizpos[keymax]) , tie


#  lsit of pairs of pos and neg maps..in number mode

def getvalue(mapping, key):

    if key in mapping.keys():
        return len(mapping[key])
    else :
        return 0

# for the number scoremode

def argmaxkeyvaluedizlength4(listofposnegmaps, keysunion, functionmode):

    settato = 0
    for k  in keysunion :
        
        if functionmode =='deltadeg':
            residual = math.fsum([getvalue(x[0],k) - getvalue(x[1],k) for x in listofposnegmaps]) #works only on the deltadeg data
        elif functionmode == 'size_x_deltadeg' :
            residual = math.fsum([getvalue(x[4],k) - getvalue(x[5],k) for x in listofposnegmaps]) #works only on the size_x_deltadeg data
        else :
            print "Wrong functionmode :", functionmode
            assert False
        
        if settato == 0 :
            keymax = k
            value = residual
            settato = 1
            tie = 0
        elif (residual > value) :
            keymax, value = k , residual
            tie = 0
        elif residual == value :
            tie = 1

    if functionmode == 'deltadeg' :
        sizevector = [getvalue(x[0],keymax) for x in listofposnegmaps]
    elif functionmode == 'size_x_deltadeg' :
        sizevector = [getvalue(x[4],keymax) for x in listofposnegmaps]
    else :
        print "Wrong functionmode :", functionmode
        assert False
           
    
    return keymax, sizevector , tie 
   

# for the weighted scoremode

def residualfunction(k, dizpos, dizneg, weightspos, weightsneg):

    if dizpos.has_key(k) :    
        residual = math.fsum([weightspos[(i,k)] for i in dizpos[k]]) + math.fsum([weightsneg[(i,k)] for i in dizneg[k]])
    else :
        residual = 0
        
    return residual
        

def argmaxkeyvaluedizlength5(listofposnegmaps, keysunion, functionmode):

#    print "Nor implemented yet: argmaxkeyvaluedizlength5"
#    assert False

    settato = 0
    for k  in keysunion :
        
        if functionmode =='deltadeg':
            residual = math.fsum([residualfunction(k, x[0],x[1],x[2],x[3]) for x in listofposnegmaps]) #works only on the deltadeg data
        elif functionmode == 'size_x_deltadeg' :
            residual = math.fsum([residualfunction(k, x[4],x[5],x[6],x[7]) for x in listofposnegmaps]) #works only on the size_x_deltadeg data
        else :
            print "Wrong functionmode :", functionmode
            assert False
        
        if settato == 0 :
            keymax = k
            value = residual
            settato = 1
            tie = 0
        elif (residual > value) :
            keymax, value = k , residual
            tie = 0
        elif residual == value :
            tie = 1

    if functionmode == 'deltadeg' :
        sizevector = [getvalue(x[0],keymax) for x in listofposnegmaps]
    elif functionmode == 'size_x_deltadeg' :
        sizevector = [getvalue(x[4],keymax) for x in listofposnegmaps]
    else :
        print "Wrong functionmode :", functionmode
        assert False
           
    
    return keymax, sizevector , tie 

    


#######################################
#
# do a set cover of drugs over the positive only

def setcover(posmap1, negmap, posscoresmap, negscoresmap, scoremode):

#    algmode = 'posonly'
    algmode = 'posneg'

#    scoremode = 'number'
#    scoremode = 'weighted'

    print "Start set covering"

    # compute the size of the graph.

    assert len(posmap1) == len(negmap)

# create locl copy pf the posmap that is alterd during the computation
    posmap = copy.deepcopy(posmap1)

    unionmodulesidpos = set()
    unionmodulesidneg = set()
    for x in posmap.keys() :
        unionmodulesidpos.update(set(posmap[x]))

    for x in negmap.keys() :
        unionmodulesidneg.update(set(negmap[x]))
        
    print "number of drugs ", len(posmap)
    print "Numbero of pos modules", len(unionmodulesidpos)
    print "Numbero of neg modules", len(unionmodulesidneg)

    coverage = 0.0
    coveredmodules = 0
    while coverage < 1.0 :

        if algmode == 'posonly'  and scoremode == 'number' :
            keymax, value, tie = argmaxkeyvaluedizlength(posmap)
        elif algmode == 'posneg' and scoremode == 'number' :
            keymax, value, tie = argmaxkeyvaluedizlength2(posmap,negmap)
        elif algmode == 'posneg' and scoremode == 'weighted' :
            keymax, value, tie = argmaxkeyvaluedizlength3(posmap,negmap, posscoresmap, negscoresmap)                        
        else :
            print "Wrong algorithmic mode ", algmode
            assert False

        coveredmodules += value
        coverage = float(coveredmodules)/float(len(unionmodulesidpos))

        print "drug selected", keymax, value, tie, coverage

        removelist = posmap[keymax]
        del posmap[keymax]
        for x in removelist :
            for y in posmap.keys() :
                if x in posmap[y] :
                    posmap[y].remove(x)
                    
    return (len(unionmodulesidpos), len(unionmodulesidneg))


########################################################
# compute statistics on drug domain (intersection, union, symm diff etc..)
# returns the union of the keys

def pairwisesetstatistics(set1,set2):

    return (len(set1 | set2), len(set1 & set2), len(set1 - set2), len(set2 - set1))


def statisticsonmaps(listofposnegmaps):

    n = len(listofposnegmaps)
    unionset = set()
    listofsets = []
    for x in listofposnegmaps :
        onedrugset = set(x[0].keys())
        listofsets.append(onedrugset)
        unionset.update(onedrugset)

    print "Drug names statistics "
    for i in range(n) :
        for j in  range(n) :
            if j>i :
                print "indices ", i, j , "drug set stats: " , pairwisesetstatistics(listofsets[i],listofsets[j])
        

    print "Total union size ", len(unionset)
    return list(unionset)
        
        
def computenumberofpositivemodules(listofposnegmaps):

    n = len(listofposnegmaps) 
    modusizevector  = []
    for x in range(n) :
        posmap = listofposnegmaps[x][0]
        unionmodulesidpos = set()   
        for y in posmap.keys() :
            unionmodulesidpos.update(set(posmap[y]))
        modusizevector.append(len(unionmodulesidpos))
    return modusizevector

        

#################################################################################
#
# a function to do covering over several graphs simultaneously

def multisetcover(listofposnegmaps,  scoremode, functionmode):

# check equlity of pos and negative map domian size 
    for x in listofposnegmaps :
        assert len(x[0]) == len(x[1])
        assert len(x[4]) == len(x[5]) 

    algmode = 'posneg'
    ngraphs = len(listofposnegmaps)
    
    keysunion = statisticsonmaps(listofposnegmaps) # returns a list of pair of numbers (posmodsize, negmodsize)
    moduleseizevector = computenumberofpositivemodules(listofposnegmaps)

    coverage = [0.0 for x in range(ngraphs)]
    coveredmodules = [0 for x in range(ngraphs)]
    meancoverage = 0.0
    
    
    while meancoverage < 0.8 :
        if algmode == 'posneg' and scoremode == 'number' :
            keymax, valuevector, tie = argmaxkeyvaluedizlength4(listofposnegmaps, keysunion, functionmode)
        elif algmode == 'posneg' and scoremode == 'weighted' :
            keymax, valuevector, tie = argmaxkeyvaluedizlength5(listofposnegmaps, keysunion, functionmode)           
        else :
            print "Wrong algorithmic mode ", algmode, "or scoremode ", scoremode
            assert False

# updating the coverage data
        for i in range(ngraphs):
            coveredmodules[i] += valuevector[i]
            coverage[i] = float(coveredmodules[i])/float(moduleseizevector[i])
        meancoverage = math.fsum(coverage)/float(ngraphs)

        print "drug selected", keymax, valuevector, tie, coverage, meancoverage

# updating the  positive mpas removing the covered modues

        for z in range(ngraphs) :
            
            if functionmode == 'deltadeg' :
                posmap = listofposnegmaps[z][0]
            elif functionmode == 'size_x_deltadeg' :
                posmap = listofposnegmaps[z][4]
            else :
                print "Wrong functionmode ", functionmode
                
            if posmap.has_key(keymax):
                removelist = posmap[keymax]
                del posmap[keymax]
                for x in removelist :
                    for y in posmap.keys() :
                        if x in posmap[y] :
                            posmap[y].remove(x)

        keysunion.remove(keymax)
    

############################################
# main exported function

def finddrugcoverofmultigraphs(inlistofmaps):

# flag to the merge phase
    flagmergephase = True

    listofposnegmaps = []
    
    for x  in  range(len(inlistofmaps)):
        
        drug_module_map = inlistofmaps[x]
        (posmap1, negmap1, posscoresmap1, negscoresmap1) = buildposandnegmaps(drug_module_map, 'deltadeg' )
        (posmap2, negmap2, posscoresmap2, negscoresmap2) = buildposandnegmaps(drug_module_map, 'size_x_deltadeg')
        listofposnegmaps.append((posmap1, negmap1, posscoresmap1, negscoresmap1, posmap2, negmap2, posscoresmap2, negscoresmap2 ))
        printmap(posmap1, "List of postively affected modules with deltadeg score")
        printmap(negmap1, "List of negatively affected modules with deltadeg score")
        print "****************************************************************"
        printmap(posmap2, "List of postively affected modules with size_x_deltadeg score")
        printmap(negmap2, "List of negatively affected modules with size_x_deltadeg score")
        print "****************************************************************"

# moved the copy locally to the function setcover       
##        posmap11 = copy.deepcopy(posmap1)
##        posmap12 = copy.deepcopy(posmap1)
##        posmap21 = copy.deepcopy(posmap2)
##        posmap22 = copy.deepcopy(posmap2)

        # code to cover an isolated module set.
        print "Drug covering for single graph number: ", x
        print '##########################'
        print "score deltadeg, cover by number"
        
        setcover(posmap1, negmap1, posscoresmap1, negscoresmap1, 'number')
        print '##########################'
        print "score deltadeg, cover by score"
        setcover(posmap1, negmap1, posscoresmap1, negscoresmap1, 'weighted')
        print '##########################'
        print "score size_x_deltadeg, cover by number"
        setcover(posmap2, negmap2, posscoresmap2, negscoresmap2, 'number')
        print '##########################'
        print "score size_x_deltadeg, cover by score"
        setcover(posmap2, negmap2, posscoresmap2, negscoresmap2, 'weighted')
        

    if flagmergephase == True and len(inlistofmaps) > 1 :
        print '######################################################################################'
        print "Begin exectuing of merge-cover for number - deltadeg"
        listofposnegmaps1 = copy.deepcopy(listofposnegmaps)
        multisetcover(listofposnegmaps1,  'number', 'deltadeg')
        print '######################################################################################'
        print "Begin exectuing of merge-cover for number - size_x_detadeg"
        listofposnegmaps1 = copy.deepcopy(listofposnegmaps)
        multisetcover(listofposnegmaps1,  'number', 'size_x_deltadeg')
        print '######################################################################################'
        print "Begin exectuing of merge-cover for weighted - detadeg"
        listofposnegmaps1 = copy.deepcopy(listofposnegmaps)
        multisetcover(listofposnegmaps1,  'weighted', 'deltadeg')
        print '######################################################################################'
        print "Begin exectuing of merge-cover for weightes - size_x_detadeg"
        listofposnegmaps1 = copy.deepcopy(listofposnegmaps)
        multisetcover(listofposnegmaps1,  'weighted', 'size_x_deltadeg')
                 
    else :
        print "No merge-cover", flagmergephase, len(inlistofmaps)

        
