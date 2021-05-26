#!/bin/csh
echo  generation of ranking by pvalue with positive filtering

allfilters1=-filter=\(arth,MD,GEO,filter,deltadeg\)-filter=\(arth,MD,GEO,filter,size_x_deltadeg\)-filter=\(arth,cpd05j08,GEO,filter,deltadeg\)-filter=\(arth,cpd05j08,GEO,filter,size_x_deltadeg\)
allfilters2=-filter=\(arth,MD,DM,filter,deltadeg\)-filter=\(arth,MD,DM,filter,size_x_deltadeg\)-filter=\(arth,cpd05j08,DM,filter,deltadeg\)-filter=\(arth,cpd05j08,DM,filter,size_x_deltadeg\)
allfilters3=-filter=\(arth,MD,GEO,nofilter,deltadeg\)-filter=\(arth,MD,GEO,nofilter,size_x_deltadeg\)-filter=\(arth,cpd05j08,GEO,nofilter,deltadeg\)-filter=\(arth,cpd05j08,GEO,nofilter,size_x_deltadeg\)
allfilters4=-filter=\(arth,MD,DM,nofilter,deltadeg\)-filter=\(arth,MD,DM,nofilter,size_x_deltadeg\)-filter=\(arth,cpd05j08,DM,nofilter,deltadeg\)-filter=\(arth,cpd05j08,DM,nofilter,size_x_deltadeg\)
allfilters5=-filter=\(arth,MD,CMAP,filter,deltadeg\)-filter=\(arth,MD,CMAP,filter,size_x_deltadeg\)-filter=\(arth,cpd05j08,CMAP,filter,deltadeg\)-filter=\(arth,cpd05j08,CMAP,filter,size_x_deltadeg\)
allfilters6=-filter=\(arth,MD,L1000,filter,deltadeg\)-filter=\(arth,MD,L1000,filter,size_x_deltadeg\)-filter=\(arth,cpd05j08,L1000,filter,deltadeg\)-filter=\(arth,cpd05j08,L1000,filter,size_x_deltadeg\)
allfilters7=-filter=\(arth,MD,CMAP,nofilter,deltadeg\)-filter=\(arth,MD,CMAP,nofilter,size_x_deltadeg\)-filter=\(arth,cpd05j08,CMAP,nofilter,deltadeg\)-filter=\(arth,cpd05j08,CMAP,nofilter,size_x_deltadeg\)
allfilters8=-filter=\(arth,MD,L1000,nofilter,deltadeg\)-filter=\(arth,MD,L1000,nofilter,size_x_deltadeg\)-filter=\(arth,cpd05j08,L1000,nofilter,deltadeg\)-filter=\(arth,cpd05j08,L1000,nofilter,size_x_deltadeg\)

allfilters=$allfilters1$allfilters2$allfilters3$allfilters4$allfilters5$allfilters6$allfilters7$allfilters8

echo GEO data filter+nofilter
python drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=\(arth,GEO,0\)  -conf=\(arth,GEO,3\) $allfilters  >   ./modulation-arthritis-results-pval-fdaonly-allposonly/merge-filter-arth-2021-02-03-01.txt  
python drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=\(arth,GEO,1\)  -conf=\(arth,GEO,3\) $allfilters  >   ./modulation-arthritis-results-pval-fdaonly-allposonly/merge-filter-arth-2021-02-03-02.txt  
python drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=\(arth,GEO,2\)  -conf=\(arth,GEO,3\) $allfilters   >  ./modulation-arthritis-results-pval-fdaonly-allposonly/merge-filter-arth-2021-02-03-03.txt  
python drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=\(arth,GEO,3\) -conf=\(arth,GEO,0\) -conf=\(arth,GEO,1\) -conf=\(arth,GEO,2\)  -conf=\(arth,GEO,4\)  $allfilters   >  ./modulation-arthritis-results-pval-fdaonly-allposonly/merge-filter-arth-2021-02-03-04.txt  
python drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=\(arth,GEO,4\) -conf=\(arth,GEO,3\) $allfilters   >  ./modulation-arthritis-results-pval-fdaonly-allposonly/merge-filter-arth-2021-02-03-05.txt  

echo DM data filter+nofilter
#python drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=\(arth,DM,0\) $allfilters  >  ./modulation-arthritis-results-pval-fdaonly-allposonly/merge-filter-arth-2021-02-03-11.txt  
python drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=\(arth,DM,1\) -conf=\(arth,DM,2\) -conf=\(arth,DM,3\) $allfilters  >  ./modulation-arthritis-results-pval-fdaonly-allposonly/merge-filter-arth-2021-02-03-12.txt  
python drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=\(arth,DM,2\) -conf=\(arth,DM,1\) $allfilters  >  ./modulation-arthritis-results-pval-fdaonly-allposonly/merge-filter-arth-2021-02-03-13.txt  
python drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=\(arth,DM,3\) -conf=\(arth,DM,1\) $allfilters  >  ./modulation-arthritis-results-pval-fdaonly-allposonly/merge-filter-arth-2021-02-03-15.txt  
#python drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=\(arth,DM,4\) $allfilters  >  ./modulation-arthritis-results-pval-fdaonly-allposonly/merge-filter-arth-2021-02-03-15.txt  


#

echo CMAPupdown data filter+nofilter
#python drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=\(arth,CMAPupdown,0\) $allfilters  >   ./modulation-arthritis-results-pval-fdaonly-allposonly/merge-filter-arth-2021-02-03-41.txt  
#python drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=\(arth,CMAPupdown,1\) $allfilters  >   ./modulation-arthritis-results-pval-fdaonly-allposonly/merge-filter-arth-2021-02-03-42.txt  
#python drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=\(arth,CMAPupdown,2\) $allfilters   >  ./modulation-arthritis-results-pval-fdaonly-allposonly/merge-filter-arth-2021-02-03-43.txt  
#python drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=\(arth,CMAPupdown,3\) $allfilters   >  ./modulation-arthritis-results-pval-fdaonly-allposonly/merge-filter-arth-2021-02-03-44.txt  
#python drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=\(arth,CMAPup,4\) $allfilters   >  ./modulation-arthritis-results-pval-fdaonly-allposonly/merge-filter-arth-2021-02-03-45.txt  

echo L1000updown data filter+nofilter
python drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=\(arth,L1000updown,0\) -conf=\(arth,L1000updown,1\) -conf=\(arth,L1000updown,2\) $allfilters  >  ./modulation-arthritis-results-pval-fdaonly-allposonly/merge-filter-arth-2021-02-03-51.txt  
python drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=\(arth,L1000updown,1\) -conf=\(arth,L1000updown,0\) $allfilters  >  ./modulation-arthritis-results-pval-fdaonly-allposonly/merge-filter-arth-2021-02-03-52.txt  
python drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=\(arth,L1000updown,2\) -conf=\(arth,L1000updown,0\) $allfilters  >  ./modulation-arthritis-results-pval-fdaonly-allposonly/merge-filter-arth-2021-02-03-53.txt  
#python drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=\(arth,L1000updown,3\) $allfilters  >  ./modulation-arthritis-results-pval-fdaonly-allposonly/merge-filter-arth-2021-02-03-55.txt  
#python drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=\(arth,L1000updown,4\) $allfilters  >  ./modulation-arthritis-results-pval-fdaonly-allposonly/merge-filter-arth-2021-02-03-55.txt  
