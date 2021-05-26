# Two routines for dunping an object to a file and for reading a dumped object forma  file
# This will allow to run separately two spit but pass data easily

import os
import pickle

def getdatafromdump(dumpdirectory, dumpfilename):

    filenamefordump = dumpdirectory + "/" + dumpfilename
    if os.path.isfile(filenamefordump):
        print "Loading targets from file" ,  filenamefordump               
        filefordump = open( filenamefordump, "rb")
        savedobject =  pickle.load(filefordump)
        filefordump.close()
        return savedobject
    else :
        print "Missing targets from file" ,  filenamefordump
        return None



def putdatatodump(dumpdirectory, dumpfilename, savedobject):

    filenamefordump = dumpdirectory + "/" + dumpfilename
    if os.path.isfile(filenamefordump):
        print "Existing  file, overwriting" ,  filenamefordump
    else :
        print "New targets file" ,  filenamefordump
        
    filefordump = open(filenamefordump, "wb")
    pickle.dump(savedobject, filefordump)
    filefordump.close()

 
##putdatatodump(".", "dumprova.txt", [1,2])
##print getdatafromdump(".", "dumprova.txt")
