#!/bin/csh
echo  generation of ranking by pvalue with positive filtering

allfilters1=-filter=\(arth,MD,GEO,filter,deltadeg\)-filter=\(arth,MD,GEO,filter,size_x_deltadeg\)-filter=\(arth,cpd05j08,GEO,filter,deltadeg\)-filter=\(arth,cpd05j08,GEO,filter,size_x_deltadeg\)
allfilters2=-filter=\(arth,MD,DM,filter,deltadeg\)-filter=\(arth,MD,DM,filter,size_x_deltadeg\)-filter=\(arth,cpd05j08,DM,filter,deltadeg\)-filter=\(arth,cpd05j08,DM,filter,size_x_deltadeg\)
allfilters3=-filter=\(arth,MD,GEO,nofilter,deltadeg\)-filter=\(arth,MD,GEO,nofilter,size_x_deltadeg\)-filter=\(arth,cpd05j08,GEO,nofilter,deltadeg\)-filter=\(arth,cpd05j08,GEO,nofilter,size_x_deltadeg\)
allfilters4=-filter=\(arth,MD,DM,nofilter,deltadeg\)-filter=\(arth,MD,DM,nofilter,size_x_deltadeg\)-filter=\(arth,cpd05j08,DM,nofilter,deltadeg\)-filter=\(arth,cpd05j08,DM,nofilter,size_x_deltadeg\)

echo GEO data filter
python drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=\(arth,GEO,0\) $allfilters1  >   ./modulation-arthritis-results-pval-fdaonly-posonly/test-filter-arth-2021-02-02-01.txt  
python drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=\(arth,GEO,1\) $allfilters1  >   ./modulation-arthritis-results-pval-fdaonly-posonly/test-filter-arth-2021-02-02-02.txt  
python drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=\(arth,GEO,2\) $allfilters1   >  ./modulation-arthritis-results-pval-fdaonly-posonly/test-filter-arth-2021-02-02-03.txt  
python drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=\(arth,GEO,3\) $allfilters1   >  ./modulation-arthritis-results-pval-fdaonly-posonly/test-filter-arth-2021-02-02-04.txt  
python drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=\(arth,GEO,4\) $allfilters1   >  ./modulation-arthritis-results-pval-fdaonly-posonly/test-filter-arth-2021-02-02-05.txt  

echo DM data filter
python drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=\(arth,DM,0\) $allfilters2  >  ./modulation-arthritis-results-pval-fdaonly-posonly/test-filter-arth-2021-02-02-11.txt  
python drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=\(arth,DM,1\) $allfilters2  >  ./modulation-arthritis-results-pval-fdaonly-posonly/test-filter-arth-2021-02-02-12.txt  
python drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=\(arth,DM,2\) $allfilters2  >  ./modulation-arthritis-results-pval-fdaonly-posonly/test-filter-arth-2021-02-02-13.txt  
python drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=\(arth,DM,3\) $allfilters2  >  ./modulation-arthritis-results-pval-fdaonly-posonly/test-filter-arth-2021-02-02-15.txt  
python drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=\(arth,DM,4\) $allfilters2  >  ./modulation-arthritis-results-pval-fdaonly-posonly/test-filter-arth-2021-02-02-15.txt  

echo GEO data nofilter
python drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=\(arth,GEO,0\) $allfilters3 >  ./modulation-arthritis-results-pval-fdaonly-posonly/test-filter-arth-2021-02-02-21.txt  
python drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=\(arth,GEO,1\) $allfilters3 >   ./modulation-arthritis-results-pval-fdaonly-posonly/test-filter-arth-2021-02-02-22.txt  
python drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=\(arth,GEO,2\) $allfilters3 >  ./modulation-arthritis-results-pval-fdaonly-posonly/test-filter-arth-2021-02-02-23.txt  
python drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=\(arth,GEO,3\) $allfilters3 >  ./modulation-arthritis-results-pval-fdaonly-posonly/test-filter-arth-2021-02-02-24.txt  
python drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=\(arth,GEO,4\) $allfilters3 >  ./modulation-arthritis-results-pval-fdaonly-posonly/test-filter-arth-2021-02-02-25.txt  

echo DM data nofilter
python drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=\(arth,DM,0\) $allfilters4  >  ./modulation-arthritis-results-pval-fdaonly-posonly/test-filter-arth-2021-02-02-31.txt  
python drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=\(arth,DM,1\) $allfilters4  >  ./modulation-arthritis-results-pval-fdaonly-posonly/test-filter-arth-2021-02-02-32.txt  
python drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=\(arth,DM,2\) $allfilters4  >  ./modulation-arthritis-results-pval-fdaonly-posonly/test-filter-arth-2021-02-02-33.txt  
python drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=\(arth,DM,3\) $allfilters4  >  ./modulation-arthritis-results-pval-fdaonly-posonly/test-filter-arth-2021-02-02-34.txt  
python drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=\(arth,DM,4\) $allfilters4  >  ./modulation-arthritis-results-pval-fdaonly-posonly/test-filter-arth-2021-02-02-35.txt  

#
allfilters5=-filter=\(arth,MD,CMAP,filter,deltadeg\)-filter=\(arth,MD,CMAP,filter,size_x_deltadeg\)-filter=\(arth,cpd05j08,CMAP,filter,deltadeg\)-filter=\(arth,cpd05j08,CMAP,filter,size_x_deltadeg\)
allfilters6=-filter=\(arth,MD,L1000,filter,deltadeg\)-filter=\(arth,MD,L1000,filter,size_x_deltadeg\)-filter=\(arth,cpd05j08,L1000,filter,deltadeg\)-filter=\(arth,cpd05j08,L1000,filter,size_x_deltadeg\)
allfilters7=-filter=\(arth,MD,CMAP,nofilter,deltadeg\)-filter=\(arth,MD,CMAP,nofilter,size_x_deltadeg\)-filter=\(arth,cpd05j08,CMAP,nofilter,deltadeg\)-filter=\(arth,cpd05j08,CMAP,nofilter,size_x_deltadeg\)
allfilters8=-filter=\(arth,MD,L1000,nofilter,deltadeg\)-filter=\(arth,MD,L1000,nofilter,size_x_deltadeg\)-filter=\(arth,cpd05j08,L1000,nofilter,deltadeg\)-filter=\(arth,cpd05j08,L1000,nofilter,size_x_deltadeg\)

echo CMAPupdown data filter
python drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=\(arth,CMAPupdown,0\) $allfilters5  >   ./modulation-arthritis-results-pval-fdaonly-posonly/test-filter-arth-2021-02-02-41.txt  
python drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=\(arth,CMAPupdown,1\) $allfilters5  >   ./modulation-arthritis-results-pval-fdaonly-posonly/test-filter-arth-2021-02-02-42.txt  
python drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=\(arth,CMAPupdown,2\) $allfilters5   >  ./modulation-arthritis-results-pval-fdaonly-posonly/test-filter-arth-2021-02-02-43.txt  
python drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=\(arth,CMAPupdown,3\) $allfilters5   >  ./modulation-arthritis-results-pval-fdaonly-posonly/test-filter-arth-2021-02-02-44.txt  
python drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=\(arth,CMAPup,4\) $allfilters5   >  ./modulation-arthritis-results-pval-fdaonly-posonly/test-filter-arth-2021-02-02-45.txt  

echo L1000updown data filter
python drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=\(arth,L1000updown,0\) $allfilters6  >  ./modulation-arthritis-results-pval-fdaonly-posonly/test-filter-arth-2021-02-02-51.txt  
python drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=\(arth,L1000updown,1\) $allfilters6  >  ./modulation-arthritis-results-pval-fdaonly-posonly/test-filter-arth-2021-02-02-52.txt  
python drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=\(arth,L1000updown,2\) $allfilters6  >  ./modulation-arthritis-results-pval-fdaonly-posonly/test-filter-arth-2021-02-02-53.txt  
python drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=\(arth,L1000updown,3\) $allfilters6  >  ./modulation-arthritis-results-pval-fdaonly-posonly/test-filter-arth-2021-02-02-55.txt  
python drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=\(arth,L1000updown,4\) $allfilters6  >  ./modulation-arthritis-results-pval-fdaonly-posonly/test-filter-arth-2021-02-02-55.txt  

echo CMAPupdown data nofilter
python drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=\(arth,CMAPupdown,0\) $allfilters7 >  ./modulation-arthritis-results-pval-fdaonly-posonly/test-filter-arth-2021-02-02-61.txt  
python drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=\(arth,CMAPupdown,1\) $allfilters7 >   ./modulation-arthritis-results-pval-fdaonly-posonly/test-filter-arth-2021-02-02-62.txt  
python drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=\(arth,CMAPupdown,2\) $allfilters7 >  ./modulation-arthritis-results-pval-fdaonly-posonly/test-filter-arth-2021-02-02-63.txt  
python drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=\(arth,CMAPupdown,3\) $allfilters7 >  ./modulation-arthritis-results-pval-fdaonly-posonly/test-filter-arth-2021-02-02-64.txt  
python drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=\(arth,CMAPup,4\) $allfilters7 >  ./modulation-arthritis-results-pval-fdaonly-posonly/test-filter-arth-2021-02-02-65.txt  

echo L1000updown data nofilter
python drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=\(arth,L1000updown,0\) $allfilters8  >  ./modulation-arthritis-results-pval-fdaonly-posonly/test-filter-arth-2021-02-02-71.txt  
python drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=\(arth,L1000updown,1\) $allfilters8  >  ./modulation-arthritis-results-pval-fdaonly-posonly/test-filter-arth-2021-02-02-72.txt  
python drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=\(arth,L1000updown,2\) $allfilters8  >  ./modulation-arthritis-results-pval-fdaonly-posonly/test-filter-arth-2021-02-02-73.txt  
python drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=\(arth,L1000updown,3\) $allfilters8  >  ./modulation-arthritis-results-pval-fdaonly-posonly/test-filter-arth-2021-02-02-74.txt  
python drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=\(arth,L1000updown,4\) $allfilters8  >  ./modulation-arthritis-results-pval-fdaonly-posonly/test-filter-arth-2021-02-02-75.txt  
