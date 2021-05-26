#!/bin/csh
echo  generation of ranking by pvalue with positive filtering

allfilters1=-filter=\(asth,MD,GEO,filter,deltadeg\)-filter=\(asth,MD,GEO,filter,size_x_deltadeg\)-filter=\(asth,cpd05j08,GEO,filter,deltadeg\)-filter=\(asth,cpd05j08,GEO,filter,size_x_deltadeg\)
allfilters2=-filter=\(asth,MD,DM,filter,deltadeg\)-filter=\(asth,MD,DM,filter,size_x_deltadeg\)-filter=\(asth,cpd05j08,DM,filter,deltadeg\)-filter=\(asth,cpd05j08,DM,filter,size_x_deltadeg\)
allfilters3=-filter=\(asth,MD,GEO,nofilter,deltadeg\)-filter=\(asth,MD,GEO,nofilter,size_x_deltadeg\)-filter=\(asth,cpd05j08,GEO,nofilter,deltadeg\)-filter=\(asth,cpd05j08,GEO,nofilter,size_x_deltadeg\)
allfilters4=-filter=\(asth,MD,DM,nofilter,deltadeg\)-filter=\(asth,MD,DM,nofilter,size_x_deltadeg\)-filter=\(asth,cpd05j08,DM,nofilter,deltadeg\)-filter=\(asth,cpd05j08,DM,nofilter,size_x_deltadeg\)

echo GEO data filter
python drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=\(asth,GEO,0\) $allfilters1  >   ./modulation-asthma-results-pval-fdaonly-posonly/test-filter-asth-2021-02-12-01.txt  
python drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=\(asth,GEO,1\) $allfilters1  >   ./modulation-asthma-results-pval-fdaonly-posonly/test-filter-asth-2021-02-12-02.txt  
python drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=\(asth,GEO,2\) $allfilters1   >  ./modulation-asthma-results-pval-fdaonly-posonly/test-filter-asth-2021-02-12-03.txt  
python drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=\(asth,GEO,3\) $allfilters1   >  ./modulation-asthma-results-pval-fdaonly-posonly/test-filter-asth-2021-02-12-04.txt  
python drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=\(asth,GEO,4\) $allfilters1   >  ./modulation-asthma-results-pval-fdaonly-posonly/test-filter-asth-2021-02-12-05.txt  

echo DM data filter
python drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=\(asth,DM,0\) $allfilters2  >  ./modulation-asthma-results-pval-fdaonly-posonly/test-filter-asth-2021-02-12-11.txt  
python drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=\(asth,DM,1\) $allfilters2  >  ./modulation-asthma-results-pval-fdaonly-posonly/test-filter-asth-2021-02-12-12.txt  
python drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=\(asth,DM,2\) $allfilters2  >  ./modulation-asthma-results-pval-fdaonly-posonly/test-filter-asth-2021-02-12-13.txt  
python drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=\(asth,DM,3\) $allfilters2  >  ./modulation-asthma-results-pval-fdaonly-posonly/test-filter-asth-2021-02-12-15.txt  
python drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=\(asth,DM,4\) $allfilters2  >  ./modulation-asthma-results-pval-fdaonly-posonly/test-filter-asth-2021-02-12-15.txt  

echo GEO data nofilter
python drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=\(asth,GEO,0\) $allfilters3 >  ./modulation-asthma-results-pval-fdaonly-posonly/test-filter-asth-2021-02-12-21.txt  
python drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=\(asth,GEO,1\) $allfilters3 >   ./modulation-asthma-results-pval-fdaonly-posonly/test-filter-asth-2021-02-12-22.txt  
python drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=\(asth,GEO,2\) $allfilters3 >  ./modulation-asthma-results-pval-fdaonly-posonly/test-filter-asth-2021-02-12-23.txt  
python drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=\(asth,GEO,3\) $allfilters3 >  ./modulation-asthma-results-pval-fdaonly-posonly/test-filter-asth-2021-02-12-24.txt  
python drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=\(asth,GEO,4\) $allfilters3 >  ./modulation-asthma-results-pval-fdaonly-posonly/test-filter-asth-2021-02-12-25.txt  

echo DM data nofilter
python drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=\(asth,DM,0\) $allfilters4  >  ./modulation-asthma-results-pval-fdaonly-posonly/test-filter-asth-2021-02-12-31.txt  
python drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=\(asth,DM,1\) $allfilters4  >  ./modulation-asthma-results-pval-fdaonly-posonly/test-filter-asth-2021-02-12-32.txt  
python drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=\(asth,DM,2\) $allfilters4  >  ./modulation-asthma-results-pval-fdaonly-posonly/test-filter-asth-2021-02-12-33.txt  
python drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=\(asth,DM,3\) $allfilters4  >  ./modulation-asthma-results-pval-fdaonly-posonly/test-filter-asth-2021-02-12-34.txt  
python drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=\(asth,DM,4\) $allfilters4  >  ./modulation-asthma-results-pval-fdaonly-posonly/test-filter-asth-2021-02-12-35.txt  

#
allfilters5=-filter=\(asth,MD,CMAP,filter,deltadeg\)-filter=\(asth,MD,CMAP,filter,size_x_deltadeg\)-filter=\(asth,cpd05j08,CMAP,filter,deltadeg\)-filter=\(asth,cpd05j08,CMAP,filter,size_x_deltadeg\)
allfilters6=-filter=\(asth,MD,L1000,filter,deltadeg\)-filter=\(asth,MD,L1000,filter,size_x_deltadeg\)-filter=\(asth,cpd05j08,L1000,filter,deltadeg\)-filter=\(asth,cpd05j08,L1000,filter,size_x_deltadeg\)
allfilters7=-filter=\(asth,MD,CMAP,nofilter,deltadeg\)-filter=\(asth,MD,CMAP,nofilter,size_x_deltadeg\)-filter=\(asth,cpd05j08,CMAP,nofilter,deltadeg\)-filter=\(asth,cpd05j08,CMAP,nofilter,size_x_deltadeg\)
allfilters8=-filter=\(asth,MD,L1000,nofilter,deltadeg\)-filter=\(asth,MD,L1000,nofilter,size_x_deltadeg\)-filter=\(asth,cpd05j08,L1000,nofilter,deltadeg\)-filter=\(asth,cpd05j08,L1000,nofilter,size_x_deltadeg\)

echo CMAPupdown data filter
python drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=\(asth,CMAPupdown,0\) $allfilters5  >   ./modulation-asthma-results-pval-fdaonly-posonly/test-filter-asth-2021-02-12-41.txt  
python drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=\(asth,CMAPupdown,1\) $allfilters5  >   ./modulation-asthma-results-pval-fdaonly-posonly/test-filter-asth-2021-02-12-42.txt  
python drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=\(asth,CMAPupdown,2\) $allfilters5   >  ./modulation-asthma-results-pval-fdaonly-posonly/test-filter-asth-2021-02-12-43.txt  
python drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=\(asth,CMAPupdown,3\) $allfilters5   >  ./modulation-asthma-results-pval-fdaonly-posonly/test-filter-asth-2021-02-12-44.txt  
python drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=\(asth,CMAPup,4\) $allfilters5   >  ./modulation-asthma-results-pval-fdaonly-posonly/test-filter-asth-2021-02-12-45.txt  

echo L1000updown data filter
python drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=\(asth,L1000updown,0\) $allfilters6  >  ./modulation-asthma-results-pval-fdaonly-posonly/test-filter-asth-2021-02-12-51.txt  
python drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=\(asth,L1000updown,1\) $allfilters6  >  ./modulation-asthma-results-pval-fdaonly-posonly/test-filter-asth-2021-02-12-52.txt  
python drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=\(asth,L1000updown,2\) $allfilters6  >  ./modulation-asthma-results-pval-fdaonly-posonly/test-filter-asth-2021-02-12-53.txt  
python drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=\(asth,L1000updown,3\) $allfilters6  >  ./modulation-asthma-results-pval-fdaonly-posonly/test-filter-asth-2021-02-12-55.txt  
python drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=\(asth,L1000updown,4\) $allfilters6  >  ./modulation-asthma-results-pval-fdaonly-posonly/test-filter-asth-2021-02-12-55.txt  

echo CMAPupdown data nofilter
python drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=\(asth,CMAPupdown,0\) $allfilters7 >  ./modulation-asthma-results-pval-fdaonly-posonly/test-filter-asth-2021-02-12-61.txt  
python drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=\(asth,CMAPupdown,1\) $allfilters7 >   ./modulation-asthma-results-pval-fdaonly-posonly/test-filter-asth-2021-02-12-62.txt  
python drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=\(asth,CMAPupdown,2\) $allfilters7 >  ./modulation-asthma-results-pval-fdaonly-posonly/test-filter-asth-2021-02-12-63.txt  
python drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=\(asth,CMAPupdown,3\) $allfilters7 >  ./modulation-asthma-results-pval-fdaonly-posonly/test-filter-asth-2021-02-12-64.txt  
python drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=\(asth,CMAPup,4\) $allfilters7 >  ./modulation-asthma-results-pval-fdaonly-posonly/test-filter-asth-2021-02-12-65.txt  

echo L1000updown data nofilter
python drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=\(asth,L1000updown,0\) $allfilters8  >  ./modulation-asthma-results-pval-fdaonly-posonly/test-filter-asth-2021-02-12-71.txt  
python drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=\(asth,L1000updown,1\) $allfilters8  >  ./modulation-asthma-results-pval-fdaonly-posonly/test-filter-asth-2021-02-12-72.txt  
python drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=\(asth,L1000updown,2\) $allfilters8  >  ./modulation-asthma-results-pval-fdaonly-posonly/test-filter-asth-2021-02-12-73.txt  
python drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=\(asth,L1000updown,3\) $allfilters8  >  ./modulation-asthma-results-pval-fdaonly-posonly/test-filter-asth-2021-02-12-74.txt  
python drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=\(asth,L1000updown,4\) $allfilters8  >  ./modulation-asthma-results-pval-fdaonly-posonly/test-filter-asth-2021-02-12-75.txt  
