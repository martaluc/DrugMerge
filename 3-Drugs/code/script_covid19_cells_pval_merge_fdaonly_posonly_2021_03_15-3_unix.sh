#!/bin/csh
echo  generation of ranking by pvalue with positive filtering

allfilters1=-filter=\(cells,MD,GEO,filter,deltadeg\)-filter=\(cells,MD,GEO,filter,size_x_deltadeg\)-filter=\(cells,cpd05j08,GEO,filter,deltadeg\)-filter=\(cells,cpd05j08,GEO,filter,size_x_deltadeg\)-filter=\(cells,cpd07j08,GEO,filter,deltadeg\)-filter=\(cells,cpd07j08,GEO,filter,size_x_deltadeg\)
allfilters2=-filter=\(cells,MD,DM,filter,deltadeg\)-filter=\(cells,MD,DM,filter,size_x_deltadeg\)-filter=\(cells,cpd05j08,DM,filter,deltadeg\)-filter=\(cells,cpd05j08,DM,filter,size_x_deltadeg\)-filter=\(cells,cpd07j08,DM,filter,deltadeg\)-filter=\(cells,cpd07j08,DM,filter,size_x_deltadeg\)
allfilters3=-filter=\(cells,MD,GEO,nofilter,deltadeg\)-filter=\(cells,MD,GEO,nofilter,size_x_deltadeg\)-filter=\(cells,cpd05j08,GEO,nofilter,deltadeg\)-filter=\(cells,cpd05j08,GEO,nofilter,size_x_deltadeg\)-filter=\(cells,cpd07j08,GEO,nofilter,deltadeg\)-filter=\(cells,cpd07j08,GEO,nofilter,size_x_deltadeg\)
allfilters4=-filter=\(cells,MD,DM,nofilter,deltadeg\)-filter=\(cells,MD,DM,nofilter,size_x_deltadeg\)-filter=\(cells,cpd05j08,DM,nofilter,deltadeg\)-filter=\(cells,cpd05j08,DM,nofilter,size_x_deltadeg\)-filter=\(cells,cpd07j08,DM,nofilter,deltadeg\)-filter=\(cells,cpd07j08,DM,nofilter,size_x_deltadeg\)

echo GEO data filter
python drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=\(cells,GEO,0\) -conf=\(cells,GEO,2\) -conf=\(cells,GEO,1\) $allfilters1  >   ./modulation-covid19-cells-results-pval-fdaonly-posonly/merge-filter-cells-2021-03-15-01.txt  
python drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=\(cells,GEO,0\) -conf=\(cells,GEO,1\) $allfilters1  >   ./modulation-covid19-cells-results-pval-fdaonly-posonly/merge-filter-cells-2021-03-15-02.txt  
python drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=\(cells,GEO,0\) -conf=\(cells,GEO,2\) $allfilters1   >  ./modulation-covid19-cells-results-pval-fdaonly-posonly/merge-filter-cells-2021-03-15-03.txt  
#python drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=\(cells,GEO,3\) $allfilters1   >  ./modulation-covid19-cells-results-pval-fdaonly-posonly/merge-filter-cells-2021-03-15-04.txt  
#python drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=\(cells,GEO,4\) $allfilters1   >  ./modulation-covid19-cells-results-pval-fdaonly-posonly/merge-filter-cells-2021-03-15-05.txt  
#python drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=\(cells,GEO,5\) $allfilters1   >  ./modulation-covid19-cells-results-pval-fdaonly-posonly/merge-filter-cells-2021-03-15-06.txt  

echo DM data filter
python drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=\(cells,DM,3\) -conf=\(cells,DM,2\) -conf=\(cells,DM,5\) -conf=\(cells,DM,4\) $allfilters2  >  ./modulation-covid19-cells-results-pval-fdaonly-posonly/merge-filter-cells-2021-03-15-11.txt  
python drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=\(cells,DM,3\) -conf=\(cells,DM,2\) -conf=\(cells,DM,5\)  $allfilters2  >  ./modulation-covid19-cells-results-pval-fdaonly-posonly/merge-filter-cells-2021-03-15-12.txt  
python drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=\(cells,DM,3\) -conf=\(cells,DM,2\)  $allfilters2  >  ./modulation-covid19-cells-results-pval-fdaonly-posonly/merge-filter-cells-2021-03-15-13.txt  
#python drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=\(cells,DM,3\) $allfilters2  >  ./modulation-covid19-cells-results-pval-fdaonly-posonly/merge-filter-cells-2021-03-15-14.txt  
#python drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=\(cells,DM,4\) $allfilters2  >  ./modulation-covid19-cells-results-pval-fdaonly-posonly/merge-filter-cells-2021-03-15-15.txt  
#python drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=\(cells,DM,5\) $allfilters2  >  ./modulation-covid19-cells-results-pval-fdaonly-posonly/merge-filter-cells-2021-03-15-16.txt  

echo GEO data nofilter
python drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=\(cells,GEO,0\) -conf=\(cells,GEO,2\)  -conf=\(cells,GEO,1\)  $allfilters3 >  ./modulation-covid19-cells-results-pval-fdaonly-posonly/merge-filter-cells-2021-03-15-21.txt  
python drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=\(cells,GEO,0\) -conf=\(cells,GEO,1\) $allfilters3 >   ./modulation-covid19-cells-results-pval-fdaonly-posonly/merge-filter-cells-2021-03-15-22.txt  
python drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=\(cells,GEO,0\) -conf=\(cells,GEO,2\) $allfilters3 >  ./modulation-covid19-cells-results-pval-fdaonly-posonly/merge-filter-cells-2021-03-15-23.txt  
#python drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=\(cells,GEO,3\) $allfilters3 >  ./modulation-covid19-cells-results-pval-fdaonly-posonly/merge-filter-cells-2021-03-15-24.txt  
#python drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=\(cells,GEO,4\) $allfilters3 >  ./modulation-covid19-cells-results-pval-fdaonly-posonly/merge-filter-cells-2021-03-15-25.txt  
#python drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=\(cells,GEO,5\) $allfilters3 >  ./modulation-covid19-cells-results-pval-fdaonly-posonly/merge-filter-cells-2021-03-15-26.txt  

echo DM data nofilter
python drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=\(cells,DM,3\) -conf=\(cells,DM,2\) -conf=\(cells,DM,5\) -conf=\(cells,DM,4\) $allfilters4  >  ./modulation-covid19-cells-results-pval-fdaonly-posonly/merge-filter-cells-2021-03-15-31.txt  
python drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=\(cells,DM,3\) -conf=\(cells,DM,2\) -conf=\(cells,DM,5\) $allfilters4  >  ./modulation-covid19-cells-results-pval-fdaonly-posonly/merge-filter-cells-2021-03-15-32.txt  
python drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=\(cells,DM,3\) -conf=\(cells,DM,2\) $allfilters4  >  ./modulation-covid19-cells-results-pval-fdaonly-posonly/merge-filter-cells-2021-03-15-33.txt  
#python drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=\(cells,DM,3\) $allfilters4  >  ./modulation-covid19-cells-results-pval-fdaonly-posonly/merge-filter-cells-2021-03-15-34.txt  
#python drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=\(cells,DM,4\) $allfilters4  >  ./modulation-covid19-cells-results-pval-fdaonly-posonly/merge-filter-cells-2021-03-15-35.txt  
#python drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=\(cells,DM,5\) $allfilters4  >  ./modulation-covid19-cells-results-pval-fdaonly-posonly/merge-filter-cells-2021-03-15-36.txt  

#
allfilters5=-filter=\(cells,MD,CMAP,filter,deltadeg\)-filter=\(cells,MD,CMAP,filter,size_x_deltadeg\)-filter=\(cells,cpd05j08,CMAP,filter,deltadeg\)-filter=\(cells,cpd05j08,CMAP,filter,size_x_deltadeg\)-filter=\(cells,cpd07j08,CMAP,filter,deltadeg\)-filter=\(cells,cpd07j08,CMAP,filter,size_x_deltadeg\)
allfilters6=-filter=\(cells,MD,L1000,filter,deltadeg\)-filter=\(cells,MD,L1000,filter,size_x_deltadeg\)-filter=\(cells,cpd05j08,L1000,filter,deltadeg\)-filter=\(cells,cpd05j08,L1000,filter,size_x_deltadeg\)-filter=\(cells,cpd07j08,L1000,filter,deltadeg\)-filter=\(cells,cpd07j08,L1000,filter,size_x_deltadeg\)
allfilters7=-filter=\(cells,MD,CMAP,nofilter,deltadeg\)-filter=\(cells,MD,CMAP,nofilter,size_x_deltadeg\)-filter=\(cells,cpd05j08,CMAP,nofilter,deltadeg\)-filter=\(cells,cpd05j08,CMAP,nofilter,size_x_deltadeg\)-filter=\(cells,cpd07j08,CMAP,nofilter,deltadeg\)-filter=\(cells,cpd07j08,CMAP,nofilter,size_x_deltadeg\)
allfilters8=-filter=\(cells,MD,L1000,nofilter,deltadeg\)-filter=\(cells,MD,L1000,nofilter,size_x_deltadeg\)-filter=\(cells,cpd05j08,L1000,nofilter,deltadeg\)-filter=\(cells,cpd05j08,L1000,nofilter,size_x_deltadeg\)-filter=\(cells,cpd07j08,L1000,nofilter,deltadeg\)-filter=\(cells,cpd07j08,L1000,nofilter,size_x_deltadeg\)

echo CMAPupdown data filter
#python drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=\(cells,CMAPupdown,0\) $allfilters5  >   ./modulation-covid19-cells-results-pval-fdaonly-posonly/merge-filter-cells-2021-03-15-41.txt  
#python drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=\(cells,CMAPupdown,1\) $allfilters5  >   ./modulation-covid19-cells-results-pval-fdaonly-posonly/merge-filter-cells-2021-03-15-42.txt  
#python drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=\(cells,CMAPupdown,2\) $allfilters5   >  ./modulation-covid19-cells-results-pval-fdaonly-posonly/merge-filter-cells-2021-03-15-43.txt  
#python drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=\(cells,CMAPupdown,3\) $allfilters5   >  ./modulation-covid19-cells-results-pval-fdaonly-posonly/merge-filter-cells-2021-03-15-44.txt  
#python drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=\(cells,CMAPupdown,4\) $allfilters5   >  ./modulation-covid19-cells-results-pval-fdaonly-posonly/merge-filter-cells-2021-03-15-45.txt  
python drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=\(cells,CMAPupdown,5\) -conf=\(cells,CMAPupdown,4\) $allfilters5   >  ./modulation-covid19-cells-results-pval-fdaonly-posonly/merge-filter-cells-2021-03-15-46.txt  

echo L1000updown data filter
python drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=\(cells,L1000updown,0\) -conf=\(cells,L1000updown,2\) $allfilters6  >  ./modulation-covid19-cells-results-pval-fdaonly-posonly/merge-filter-cells-2021-03-15-51.txt  
#python drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=\(cells,L1000updown,1\) $allfilters6  >  ./modulation-covid19-cells-results-pval-fdaonly-posonly/merge-filter-cells-2021-03-15-52.txt  
#python drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=\(cells,L1000updown,2\) $allfilters6  >  ./modulation-covid19-cells-results-pval-fdaonly-posonly/merge-filter-cells-2021-03-15-53.txt  
#python drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=\(cells,L1000updown,3\) $allfilters6  >  ./modulation-covid19-cells-results-pval-fdaonly-posonly/merge-filter-cells-2021-03-15-54.txt  
#python drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=\(cells,L1000updown,4\) $allfilters6  >  ./modulation-covid19-cells-results-pval-fdaonly-posonly/merge-filter-cells-2021-03-15-55.txt  
#python drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=\(cells,L1000updown,5\) $allfilters6  >  ./modulation-covid19-cells-results-pval-fdaonly-posonly/merge-filter-cells-2021-03-15-56.txt  

echo CMAPupdown data nofilter
#python drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=\(cells,CMAPupdown,0\) $allfilters7 >  ./modulation-covid19-cells-results-pval-fdaonly-posonly/merge-filter-cells-2021-03-15-61.txt  
#python drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=\(cells,CMAPupdown,1\) $allfilters7 >   ./modulation-covid19-cells-results-pval-fdaonly-posonly/merge-filter-cells-2021-03-15-62.txt  
#python drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=\(cells,CMAPupdown,2\) $allfilters7 >  ./modulation-covid19-cells-results-pval-fdaonly-posonly/merge-filter-cells-2021-03-15-63.txt  
#python drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=\(cells,CMAPupdown,3\) $allfilters7 >  ./modulation-covid19-cells-results-pval-fdaonly-posonly/merge-filter-cells-2021-03-15-64.txt  
#python drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=\(cells,CMAPupdown,4\) $allfilters7 >  ./modulation-covid19-cells-results-pval-fdaonly-posonly/merge-filter-cells-2021-03-15-65.txt  
#python drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=\(cells,CMAPupdown,5\)  -conf=\(cells,CMAPupdown,4\) $allfilters7 >  ./modulation-covid19-cells-results-pval-fdaonly-posonly/merge-filter-cells-2021-03-15-66.txt  

echo L1000updown data nofilter
python drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=\(cells,L1000updown,0\) -conf=\(cells,L1000updown,2\) $allfilters8  >  ./modulation-covid19-cells-results-pval-fdaonly-posonly/merge-filter-cells-2021-03-15-71.txt  
#python drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=\(cells,L1000updown,1\) $allfilters8  >  ./modulation-covid19-cells-results-pval-fdaonly-posonly/merge-filter-cells-2021-03-15-72.txt  
#python drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=\(cells,L1000updown,2\) $allfilters8  >  ./modulation-covid19-cells-results-pval-fdaonly-posonly/merge-filter-cells-2021-03-15-73.txt  
#python drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=\(cells,L1000updown,3\) $allfilters8  >  ./modulation-covid19-cells-results-pval-fdaonly-posonly/merge-filter-cells-2021-03-15-74.txt  
#python drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=\(cells,L1000updown,4\) $allfilters8  >  ./modulation-covid19-cells-results-pval-fdaonly-posonly/merge-filter-cells-2021-03-15-75.txt  
#python drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=\(cells,L1000updown,5\) $allfilters8  >  ./modulation-covid19-cells-results-pval-fdaonly-posonly/merge-filter-cells-2021-03-15-76.txt  
