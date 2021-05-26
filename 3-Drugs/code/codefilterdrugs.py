# code to uplaoding dumped lists of drugs and make their union for filtering
# other results.

#from codefordumping import getdatafromdump
from generic_util import printmap, printlist

# old code for retrieving postive drugs
# upload at start time
##
##positivemap = getdatafromdump('.', 'runspositivelistsdump.txt')
##
####################################
### main function
##
##
##def filterdrugs(inlist):
##
##    if inlist == None:
##        return []
##    if inlist == [] :
##        return []
##
##
##    if positivemap == None :
##        print "Warning no filters dumped"
##        assert False
##
##    unionsetdrugnames = set()
##    listofmaps = []
##    lablestr = ''
##    for key in inlist :
##        lable0 = key + ['True','True']
##        lable1 = ','.join(lable0)
##        lable = '(' + lable1 + ')'
##        if lable in positivemap.keys() :
##            partlist1 = positivemap[lable][0]
##            partlist = [x[1] for x in partlist1]
##            unionsetdrugnames.update(set(partlist))
##            listofmaps.append(partlist1)
##            lablestr = lablestr + str(key)
##        else :
##            print "No data yet for key ", key, lable
##            print "available kyes", positivemap.keys()
##            
##        
##    return (list(unionsetdrugnames), listofmaps, lablestr)
##    

#################################################
# code testing

#y = filterdrugs([str(('balf','cpd07j08','GEO','nofilter','True','True')),str(('pbmc','cpd07j08','GEO','nofilter','True','True')),])
#printlist(y, "lista finale" )

# new code

from testing_directionality_data import uploadrunsmap

def filterdrugs(inlist):

    if inlist == None:
        return []
    if inlist == [] :
        return []


##    if positivemap == None :
##        print "Warning no filters dumped"
##        assert False

    unionsetdrugnames = set()
    listofmaps = []
    lablestr = ''
    for key in inlist :
        lable0 = key + ['True','True']
        lable1 = ','.join(lable0)
        lable = '(' + lable1 + ')'
        result = uploadrunsmap(lable)
        if result != None :
            partlist1 = result[0]
            partlist = [x[1] for x in partlist1]
            unionsetdrugnames.update(set(partlist))
            listofmaps.append(partlist1)
            lablestr = lablestr + str(key)
        else :
            print "No data yet for key ", key, lable
#            print "available kyes", positivemap.keys()
            
        
    return (list(unionsetdrugnames), listofmaps, lablestr)
    
#################################################
# code testing

##y = filterdrugs([['arth','MD','GEO','filter','size_x_deltadeg'],['asth','cpd05j08','DM','filter','size_x_deltadeg'],])
##printlist(y[0], "lista finale" )

