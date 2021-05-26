# A file of file utiities

import os

############
# test exisence of a directirry if not eisting it is created

def testexistenceanscreatedirectory(path) :

    exists = False    
    if os.path.exists(path):
        print(path + ' : exists')
        if os.path.isdir(path):
            print(path + ' : is a directory')
            exists = True
        else :
            print(path + ' : is not a directory')
    else :
        print(path + ' : does not exists. Creating it')
        os.mkdir(path)
        exists = True
 
    return exists


###########################

def testexistencedirectory(path) :

    exists = False    
    if os.path.exists(path):
        print(path + ' : exists')
        if os.path.isdir(path):
            print(path + ' : is a directory')
            exists = True
        else :
            print(path + ' : is not a directory')
    else :
        print(path + ' : does not exists')
 
    return exists


def testexistencefile(directorypath, filename) :

    exists = False
    fullpath = os.path.join(directorypath,filename)
    if os.path.exists(fullpath):
        print(fullpath + ' : exists')
        if os.path.isfile(fullpath):
            print(fullpath + ' : is a file')
            exists = True
        else :
            print(fullpath + ' : is not a file')
    else :
        print(fullpath + ' : does not exists')
 
    return exists



