# generic utilities

import math

###########################################################
# generic utilities

def printmap(inmap, explanationstring) :

    print "*************************************************************"
    print explanationstring, "size", len(inmap)
    for x in inmap.keys() :
        print x, inmap[x]

def printlist(inlist, explanationstring) :

    print "*************************************************************"
    print explanationstring, "size", len(inlist)
    for x in range(len(inlist)) :
        print x, inlist[x]

def venndiagramdrugs(strd1, d1, strd2, d2) :

    set1 = set(d1.keys())
    set2 = set(d2.keys())

    print "In ", strd1 , " not in ", strd2 , set1 - set2
    print "In ", strd2 , " not in ", strd1 , set2 - set1
    print "In both ",  set1 & set2 
    

def minuslog10(y) :
    if y == 0.0 :
        return 1000
    else :
        return -math.log10(y)
