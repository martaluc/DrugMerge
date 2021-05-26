# testing crank merging proceure

import numpy as np
from scipy import stats

from raa import rra

###############################

##a = np.matrix([[1,2],[3,4],[5,6],[7,8]])
##a1 = np.matrix([[1,9],[3,5],[5,5],[7,1]])
##
##
##print a
##
##print a1
##
###print rra(a)
##
##print rra(a, return_all=False)
##print rra(a1, return_all=False)

####################################################
# code for multi merge of lsit rankings

list1 = dict([('a',1), ('b',2),('c',3),('d',4),('e',5), ('f',6)])
list2 = dict([('a',1), ('b',2),('c',3),('d',4)])
list3 = dict([('a',1), ('b',2),('c',4),('e',3)])
list4 = dict([('b',2),('c',3),('d',4),('e',5), ('f',6)])
list5 = dict([('a',1), ('b',2),('d',4),('e',5), ('f',6)])


mylistoflists = (list1, list2, list3, list4, list5)


def mapmin(inmap) :

    if len(inmap.keys()) == 0 :
        return None
    first = True
    outval = None
    for x in inmap.keys() :
        if first :
            outval = inmap[x]
            first = False
        else :
           outval = min(outval, inmap[x])
    return outval

def mapmax(inmap) :

    if len(inmap.keys()) == 0 :
        return None
    first = True
    outval = None
    for x in inmap.keys() :
        if first :
            outval = inmap[x]
            first = False
        else :
           outval = max(outval, inmap[x])
    return outval
         


def multimergeranking(listoflists):
    ####################################################

    listofdifflsits = [{} for x in range(len(listoflists))]

    totalset = set()
    for x in listoflists :
        totalset = totalset.union(set(x.keys()))

    print len(totalset), totalset
    totallist = list(totalset)

    #############################################

    maxlengths = [0 for x in range(len(listoflists))]
    for x in range(len(listoflists)):
        maxlengths[x] = len(listoflists[x]) 

    print maxlengths

    for x in  totalset :
        num = 0
        val = 0.0    
        for y in range(len(listoflists)) :
            if x in listoflists[y].keys() :
                num +=1
                val += listoflists[y][x]
        if num > 0 :
            meanvalue = val/float(num)
            print x, num, val, meanvalue
        for y in range(len(listoflists)) :
            if x not in listoflists[y].keys() :
                listofdifflsits[y][x] = meanvalue
                
                
    # apply rescaling to listofdifflsits values..

    scaledlistofdifflsits = [{} for x in range(len(listoflists))]


    minvector =  [mapmin(inmap) for inmap in listoflists]
    print 'minvector ', minvector
    maxvector =  [mapmax(inmap) for inmap in listofdifflsits]       
    print 'maxvector ', maxvector

    for x in range(len(scaledlistofdifflsits)) :
        if maxvector[x] != None :
            for y in listofdifflsits[x].keys():
                scaledlistofdifflsits[x][y] =   (float(minvector[x])/float(maxvector[x])) * listofdifflsits[x][y]   

    print "input lists"
    for z in range(len(listoflists)) :
        print z, listoflists[z]
     
    print "before rescaling"
    for z in range(len(listofdifflsits)) :
        print z, listofdifflsits[z]

    print "rescaled"
    for z in range(len(scaledlistofdifflsits)) :
        print z, scaledlistofdifflsits[z]

    # turn to a matrix x rra input

    matrix = [[0 for x in range(len(listoflists))] for y in range(len(totallist)) ]

    for x in range(len(totallist)) :
        key = totallist[x]
        for y in range(len(listoflists)) :
            if listoflists[y].has_key(key) :                   
                matrix[x][y] = listoflists[y][key]
            elif scaledlistofdifflsits[y].has_key(key):
                matrix[x][y] = scaledlistofdifflsits[y][key]
            else :
                print "matrix not well formed, missing key", x, y, key
                assert False

    print totallist
    for z in range(len(matrix))  :
        print z, matrix[z]
                       

    npmatrix = np.matrix(matrix)
    mergedvector =  rra(npmatrix, return_all=False)

    for x in range(len(totallist)) :
        print totallist[x], mergedvector[x]

    return (totallist, mergedvector, matrix)

###################################
#multimergeranking(mylistoflists)
