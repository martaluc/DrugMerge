################################################
# generic utilities
from generic_util import printmap, printlist

##############################################
# import file handling utils

from file_handling_util import testexistencedirectory, testexistencefile

from mapping_modulation_data import modulation_data

########################################
def increment_count(mapping, key) :

    if key in mapping.keys() :
        mapping[key] += 1
    else :
        mapping[key] = 0

######################################
# merg the k eccess filds in position from 1 to 1+k and resize the tuple:
# change the separator in the process

def resize(inlist, k , new_separator):

    assert k >= 0
    assert k <= len(inlist) -1
    new_field_one = new_separator.join(inlist[1:2+k])
    outlist = [inlist[0],] + [new_field_one,] + inlist[2+k:]
    return outlist

##testing resize

#print resize(['a', 'b', 'c', 'd', 'e'], 2 , '_')


######################################

def load_data (directory, filename, separator) :

    testexistencedirectory(directory)
    testexistencefile(directory,filename)

    print "Opening", directory, filename

    

    f = open(directory + '/' + filename)
    accumulator = []
    fields_counter = {}
    recovered = 0
    normalsize = 0
    linenumber = 0
    testprintnumber = 0

    line = f.readline()
    ll = line.split(separator)
    print "Header : ", len(ll), ll
    numfields = len(ll)
    line = f.readline()
    while line != '' :
        linenumber +=1
#        print line
        record =  line.split(separator)
        increment_count(fields_counter, len(record))
        delta = len(record) - numfields
        if delta == 0 :
            normalsize +=1
#            record1 = [x.strip('\n').strip('"') for x in record ]
#        print record1
#            accumulator.append(record1)
        elif delta > 0 :
            newrecord = resize(record, delta , '_')
            assert len(newrecord) == numfields
            recovered += 1
            if testprintnumber < 100 :
                print newrecord
                testprintnumber += 1
#            print "Warning: separator problem: ", len(record), record
        else :
            print "Too few seprators ", record
            
        line = f.readline()
        
    f.close()
    printmap(fields_counter, "distribution of filds number by separator :"+separator)
    print "normalsize ", normalsize, "recovered", recovered, "matching total", recovered+normalsize , linenumber
    
#    return accumulator

############################
directory = modulation_data[('pbmc', 'cpd05j08', 'L1000', 'nofilter')][0]
filename = modulation_data[('pbmc', 'cpd05j08', 'L1000', 'nofilter')][1]
separator = ','


load_data (directory, filename, separator)
