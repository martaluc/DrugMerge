#!/bin/csh
echo  generation of ranking by pvalue with positive filtering

allfilters1=-filter=\(pbmc,MD,GEO,filter,deltadeg\)-filter=\(pbmc,MD,GEO,filter,size_x_deltadeg\)-filter=\(pbmc,cpd05j08,GEO,filter,deltadeg\)-filter=\(pbmc,cpd05j08,GEO,filter,size_x_deltadeg\)-filter=\(pbmc,cpd07j08,GEO,filter,deltadeg\)-filter=\(pbmc,cpd07j08,GEO,filter,size_x_deltadeg\)
allfilters2=-filter=\(pbmc,MD,DM,filter,deltadeg\)-filter=\(pbmc,MD,DM,filter,size_x_deltadeg\)-filter=\(pbmc,cpd05j08,DM,filter,deltadeg\)-filter=\(pbmc,cpd05j08,DM,filter,size_x_deltadeg\)-filter=\(pbmc,cpd07j08,DM,filter,deltadeg\)-filter=\(pbmc,cpd07j08,DM,filter,size_x_deltadeg\)
allfilters3=-filter=\(pbmc,MD,GEO,nofilter,deltadeg\)-filter=\(pbmc,MD,GEO,nofilter,size_x_deltadeg\)-filter=\(pbmc,cpd05j08,GEO,nofilter,deltadeg\)-filter=\(pbmc,cpd05j08,GEO,nofilter,size_x_deltadeg\)-filter=\(pbmc,cpd07j08,GEO,nofilter,deltadeg\)-filter=\(pbmc,cpd07j08,GEO,nofilter,size_x_deltadeg\)
allfilters4=-filter=\(pbmc,MD,DM,nofilter,deltadeg\)-filter=\(pbmc,MD,DM,nofilter,size_x_deltadeg\)-filter=\(pbmc,cpd05j08,DM,nofilter,deltadeg\)-filter=\(pbmc,cpd05j08,DM,nofilter,size_x_deltadeg\)-filter=\(pbmc,cpd07j08,DM,nofilter,deltadeg\)-filter=\(pbmc,cpd07j08,DM,nofilter,size_x_deltadeg\)
allfilters5=-filter=\(pbmc,MD,CMAP,filter,deltadeg\)-filter=\(pbmc,MD,CMAP,filter,size_x_deltadeg\)-filter=\(pbmc,cpd05j08,CMAP,filter,deltadeg\)-filter=\(pbmc,cpd05j08,CMAP,filter,size_x_deltadeg\)-filter=\(pbmc,cpd07j08,CMAP,filter,deltadeg\)-filter=\(pbmc,cpd07j08,CMAP,filter,size_x_deltadeg\)
allfilters6=-filter=\(pbmc,MD,L1000,filter,deltadeg\)-filter=\(pbmc,MD,L1000,filter,size_x_deltadeg\)-filter=\(pbmc,cpd05j08,L1000,filter,deltadeg\)-filter=\(pbmc,cpd05j08,L1000,filter,size_x_deltadeg\)-filter=\(pbmc,cpd07j08,L1000,filter,deltadeg\)-filter=\(pbmc,cpd07j08,L1000,filter,size_x_deltadeg\)
allfilters7=-filter=\(pbmc,MD,CMAP,nofilter,deltadeg\)-filter=\(pbmc,MD,CMAP,nofilter,size_x_deltadeg\)-filter=\(pbmc,cpd05j08,CMAP,nofilter,deltadeg\)-filter=\(pbmc,cpd05j08,CMAP,nofilter,size_x_deltadeg\)-filter=\(pbmc,cpd07j08,CMAP,nofilter,deltadeg\)-filter=\(pbmc,cpd07j08,CMAP,nofilter,size_x_deltadeg\)
allfilters8=-filter=\(pbmc,MD,L1000,nofilter,deltadeg\)-filter=\(pbmc,MD,L1000,nofilter,size_x_deltadeg\)-filter=\(pbmc,cpd05j08,L1000,nofilter,deltadeg\)-filter=\(pbmc,cpd05j08,L1000,nofilter,size_x_deltadeg\)-filter=\(pbmc,cpd07j08,L1000,nofilter,deltadeg\)-filter=\(pbmc,cpd07j08,L1000,nofilter,size_x_deltadeg\)

allfilters=$allfilters1 $allfilters2 $allfilters3 $allfilters4 $allfilters5 $allfilters6 $allfilters7 $allfilters8$

echo GEO data filter
python drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=\(pbmc,GEO,0\) $allfilters  >   ./modulation-covid19-pbmc-results-pval-fdaonly-allposonly/test-filter-covid19-pbmc-2021-03-14-laptop-01.txt  
python drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=\(pbmc,GEO,1\) $allfilters  >   ./modulation-covid19-pbmc-results-pval-fdaonly-allposonly/test-filter-covid19-pbmc-2021-03-14-laptop-02.txt  
python drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=\(pbmc,GEO,2\) $allfilters   >  ./modulation-covid19-pbmc-results-pval-fdaonly-allposonly/test-filter-covid19-pbmc-2021-03-14-laptop-03.txt  
python drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=\(pbmc,GEO,3\) $allfilters   >  ./modulation-covid19-pbmc-results-pval-fdaonly-allposonly/test-filter-covid19-pbmc-2021-03-14-laptop-04.txt  
python drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=\(pbmc,GEO,4\) $allfilters   >  ./modulation-covid19-pbmc-results-pval-fdaonly-allposonly/test-filter-covid19-pbmc-2021-03-14-laptop-05.txt  
python drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=\(pbmc,GEO,5\) $allfilters   >  ./modulation-covid19-pbmc-results-pval-fdaonly-allposonly/test-filter-covid19-pbmc-2021-03-14-laptop-06.txt  
python drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=\(pbmc,GEO,6\) $allfilters   >  ./modulation-covid19-pbmc-results-pval-fdaonly-allposonly/test-filter-covid19-pbmc-2021-03-14-laptop-07.txt  


echo DM data filter
python drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=\(pbmc,DM,0\) $allfilters  >  ./modulation-covid19-pbmc-results-pval-fdaonly-allposonly/test-filter-covid19-pbmc-2021-03-14-laptop-11.txt  
python drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=\(pbmc,DM,1\) $allfilters  >  ./modulation-covid19-pbmc-results-pval-fdaonly-allposonly/test-filter-covid19-pbmc-2021-03-14-laptop-12.txt  
python drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=\(pbmc,DM,2\) $allfilters  >  ./modulation-covid19-pbmc-results-pval-fdaonly-allposonly/test-filter-covid19-pbmc-2021-03-14-laptop-13.txt  
python drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=\(pbmc,DM,3\) $allfilters  >  ./modulation-covid19-pbmc-results-pval-fdaonly-allposonly/test-filter-covid19-pbmc-2021-03-14-laptop-14.txt  
python drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=\(pbmc,DM,4\) $allfilters  >  ./modulation-covid19-pbmc-results-pval-fdaonly-allposonly/test-filter-covid19-pbmc-2021-03-14-laptop-15.txt  
python drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=\(pbmc,DM,5\) $allfilters  >  ./modulation-covid19-pbmc-results-pval-fdaonly-allposonly/test-filter-covid19-pbmc-2021-03-14-laptop-16.txt  
python drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=\(pbmc,DM,6\) $allfilters  >  ./modulation-covid19-pbmc-results-pval-fdaonly-allposonly/test-filter-covid19-pbmc-2021-03-14-laptop-17.txt  

#echo GEO data nofilter
#python drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=\(pbmc,GEO,0\) $allfilters >  ./modulation-covid19-pbmc-results-pval-fdaonly-allposonly/test-filter-covid19-pbmc-2021-03-14-laptop-21.txt  
#python drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=\(pbmc,GEO,1\) $allfilters >   ./modulation-covid19-pbmc-results-pval-fdaonly-allposonly/test-filter-covid19-pbmc-2021-03-14-laptop-22.txt  
#python drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=\(pbmc,GEO,2\) $allfilters >  ./modulation-covid19-pbmc-results-pval-fdaonly-allposonly/test-filter-covid19-pbmc-2021-03-14-laptop-23.txt  
#python drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=\(pbmc,GEO,3\) $allfilters >  ./modulation-covid19-pbmc-results-pval-fdaonly-allposonly/test-filter-covid19-pbmc-2021-03-14-laptop-24.txt  
#python drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=\(pbmc,GEO,4\) $allfilters >  ./modulation-covid19-pbmc-results-pval-fdaonly-allposonly/test-filter-covid19-pbmc-2021-03-14-laptop-25.txt  
#python drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=\(pbmc,GEO,5\) $allfilters >  ./modulation-covid19-pbmc-results-pval-fdaonly-allposonly/test-filter-covid19-pbmc-2021-03-14-laptop-26.txt  

#echo DM data nofilter
#python drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=\(pbmc,DM,0\) $allfilters  >  ./modulation-covid19-pbmc-results-pval-fdaonly-allposonly/test-filter-covid19-pbmc-2021-03-14-laptop-31.txt  
#python drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=\(pbmc,DM,1\) $allfilters  >  ./modulation-covid19-pbmc-results-pval-fdaonly-allposonly/test-filter-covid19-pbmc-2021-03-14-laptop-32.txt  
#python drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=\(pbmc,DM,2\) $allfilters  >  ./modulation-covid19-pbmc-results-pval-fdaonly-allposonly/test-filter-covid19-pbmc-2021-03-14-laptop-33.txt  
#python drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=\(pbmc,DM,3\) $allfilters  >  ./modulation-covid19-pbmc-results-pval-fdaonly-allposonly/test-filter-covid19-pbmc-2021-03-14-laptop-34.txt  
#python drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=\(pbmc,DM,4\) $allfilters  >  ./modulation-covid19-pbmc-results-pval-fdaonly-allposonly/test-filter-covid19-pbmc-2021-03-14-laptop-35.txt  
#python drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=\(pbmc,DM,5\) $allfilters  >  ./modulation-covid19-pbmc-results-pval-fdaonly-allposonly/test-filter-covid19-pbmc-2021-03-14-laptop-36.txt  

#

echo CMAPupdown data filter
python drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=\(pbmc,CMAPupdown,0\) $allfilters  >   ./modulation-covid19-pbmc-results-pval-fdaonly-allposonly/test-filter-covid19-pbmc-2021-03-14-laptop-41.txt  
python drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=\(pbmc,CMAPupdown,1\) $allfilters  >   ./modulation-covid19-pbmc-results-pval-fdaonly-allposonly/test-filter-covid19-pbmc-2021-03-14-laptop-42.txt  
python drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=\(pbmc,CMAPupdown,2\) $allfilters   >  ./modulation-covid19-pbmc-results-pval-fdaonly-allposonly/test-filter-covid19-pbmc-2021-03-14-laptop-43.txt  
python drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=\(pbmc,CMAPupdown,3\) $allfilters   >  ./modulation-covid19-pbmc-results-pval-fdaonly-allposonly/test-filter-covid19-pbmc-2021-03-14-laptop-44.txt  
python drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=\(pbmc,CMAPupdown,4\) $allfilters   >  ./modulation-covid19-pbmc-results-pval-fdaonly-allposonly/test-filter-covid19-pbmc-2021-03-14-laptop-45.txt  
python drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=\(pbmc,CMAPupdown,5\) $allfilters   >  ./modulation-covid19-pbmc-results-pval-fdaonly-allposonly/test-filter-covid19-pbmc-2021-03-14-laptop-46.txt  
python drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=\(pbmc,CMAPupdown,6\) $allfilters   >  ./modulation-covid19-pbmc-results-pval-fdaonly-allposonly/test-filter-covid19-pbmc-2021-03-14-laptop-47.txt  

echo L1000updown data filter
python drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=\(pbmc,L1000updown,0\) $allfilters  >  ./modulation-covid19-pbmc-results-pval-fdaonly-allposonly/test-filter-covid19-pbmc-2021-03-14-laptop-51.txt  
python drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=\(pbmc,L1000updown,1\) $allfilters  >  ./modulation-covid19-pbmc-results-pval-fdaonly-allposonly/test-filter-covid19-pbmc-2021-03-14-laptop-52.txt  
python drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=\(pbmc,L1000updown,2\) $allfilters  >  ./modulation-covid19-pbmc-results-pval-fdaonly-allposonly/test-filter-covid19-pbmc-2021-03-14-laptop-53.txt  
python drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=\(pbmc,L1000updown,3\) $allfilters  >  ./modulation-covid19-pbmc-results-pval-fdaonly-allposonly/test-filter-covid19-pbmc-2021-03-14-laptop-54.txt  
python drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=\(pbmc,L1000updown,4\) $allfilters  >  ./modulation-covid19-pbmc-results-pval-fdaonly-allposonly/test-filter-covid19-pbmc-2021-03-14-laptop-55.txt  
python drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=\(pbmc,L1000updown,5\) $allfilters  >  ./modulation-covid19-pbmc-results-pval-fdaonly-allposonly/test-filter-covid19-pbmc-2021-03-14-laptop-56.txt  
python drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=\(pbmc,L1000updown,6\) $allfilters  >  ./modulation-covid19-pbmc-results-pval-fdaonly-allposonly/test-filter-covid19-pbmc-2021-03-14-laptop-57.txt  

#echo CMAPupdown data nofilter
#python drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=\(pbmc,CMAPupdown,0\) $allfilters >  ./modulation-covid19-pbmc-results-pval-fdaonly-allposonly/test-filter-covid19-pbmc-2021-03-14-laptop-61.txt  
#python drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=\(pbmc,CMAPupdown,1\) $allfilters >   ./modulation-covid19-pbmc-results-pval-fdaonly-allposonly/test-filter-covid19-pbmc-2021-03-14-laptop-62.txt  
#python drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=\(pbmc,CMAPupdown,2\) $allfilters >  ./modulation-covid19-pbmc-results-pval-fdaonly-allposonly/test-filter-covid19-pbmc-2021-03-14-laptop-63.txt  
#python drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=\(pbmc,CMAPupdown,3\) $allfilters >  ./modulation-covid19-pbmc-results-pval-fdaonly-allposonly/test-filter-covid19-pbmc-2021-03-14-laptop-64.txt  
#python drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=\(pbmc,CMAPupdown,4\) $allfilters >  ./modulation-covid19-pbmc-results-pval-fdaonly-allposonly/test-filter-covid19-pbmc-2021-03-14-laptop-65.txt  
#python drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=\(pbmc,CMAPupdown,5\) $allfilters >  ./modulation-covid19-pbmc-results-pval-fdaonly-allposonly/test-filter-covid19-pbmc-2021-03-14-laptop-66.txt  

#echo L1000updown data nofilter
#python drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=\(pbmc,L1000updown,0\) $allfilters  >  ./modulation-covid19-pbmc-results-pval-fdaonly-allposonly/test-filter-covid19-pbmc-2021-03-14-laptop-71.txt  
#python drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=\(pbmc,L1000updown,1\) $allfilters  >  ./modulation-covid19-pbmc-results-pval-fdaonly-allposonly/test-filter-covid19-pbmc-2021-03-14-laptop-72.txt  
#python drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=\(pbmc,L1000updown,2\) $allfilters  >  ./modulation-covid19-pbmc-results-pval-fdaonly-allposonly/test-filter-covid19-pbmc-2021-03-14-laptop-73.txt  
#python drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=\(pbmc,L1000updown,3\) $allfilters  >  ./modulation-covid19-pbmc-results-pval-fdaonly-allposonly/test-filter-covid19-pbmc-2021-03-14-laptop-74.txt  
#python drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=\(pbmc,L1000updown,4\) $allfilters  >  ./modulation-covid19-pbmc-results-pval-fdaonly-allposonly/test-filter-covid19-pbmc-2021-03-14-laptop-75.txt  
#python drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=\(pbmc,L1000updown,5\) $allfilters  >  ./modulation-covid19-pbmc-results-pval-fdaonly-allposonly/test-filter-covid19-pbmc-2021-03-14-laptop-76.txt  
