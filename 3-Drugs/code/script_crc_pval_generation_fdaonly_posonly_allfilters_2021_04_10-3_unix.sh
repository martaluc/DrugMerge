#!/bin/csh
echo  generation of ranking by pvalue with positive filtering

allfilters1=-filter=\(crc,MD,GEO,filter,deltadeg\)-filter=\(crc,MD,GEO,filter,size_x_deltadeg\)-filter=\(crc,cpd05j08,GEO,filter,deltadeg\)-filter=\(crc,cpd05j08,GEO,filter,size_x_deltadeg\)-filter=\(crc,cpd07j08,GEO,filter,deltadeg\)-filter=\(crc,cpd07j08,GEO,filter,size_x_deltadeg\)
allfilters2=-filter=\(crc,MD,DM,filter,deltadeg\)-filter=\(crc,MD,DM,filter,size_x_deltadeg\)-filter=\(crc,cpd05j08,DM,filter,deltadeg\)-filter=\(crc,cpd05j08,DM,filter,size_x_deltadeg\)-filter=\(crc,cpd07j08,DM,filter,deltadeg\)-filter=\(crc,cpd07j08,DM,filter,size_x_deltadeg\)
allfilters3=-filter=\(crc,MD,GEO,nofilter,deltadeg\)-filter=\(crc,MD,GEO,nofilter,size_x_deltadeg\)-filter=\(crc,cpd05j08,GEO,nofilter,deltadeg\)-filter=\(crc,cpd05j08,GEO,nofilter,size_x_deltadeg\)-filter=\(crc,cpd07j08,GEO,nofilter,deltadeg\)-filter=\(crc,cpd07j08,GEO,nofilter,size_x_deltadeg\)
allfilters4=-filter=\(crc,MD,DM,nofilter,deltadeg\)-filter=\(crc,MD,DM,nofilter,size_x_deltadeg\)-filter=\(crc,cpd05j08,DM,nofilter,deltadeg\)-filter=\(crc,cpd05j08,DM,nofilter,size_x_deltadeg\)-filter=\(crc,cpd07j08,DM,nofilter,deltadeg\)-filter=\(crc,cpd07j08,DM,nofilter,size_x_deltadeg\)
allfilters5=-filter=\(crc,MD,CMAP,filter,deltadeg\)-filter=\(crc,MD,CMAP,filter,size_x_deltadeg\)-filter=\(crc,cpd05j08,CMAP,filter,deltadeg\)-filter=\(crc,cpd05j08,CMAP,filter,size_x_deltadeg\)-filter=\(crc,cpd07j08,CMAP,filter,deltadeg\)-filter=\(crc,cpd07j08,CMAP,filter,size_x_deltadeg\)
allfilters6=-filter=\(crc,MD,L1000,filter,deltadeg\)-filter=\(crc,MD,L1000,filter,size_x_deltadeg\)-filter=\(crc,cpd05j08,L1000,filter,deltadeg\)-filter=\(crc,cpd05j08,L1000,filter,size_x_deltadeg\)-filter=\(crc,cpd07j08,L1000,filter,deltadeg\)-filter=\(crc,cpd07j08,L1000,filter,size_x_deltadeg\)
allfilters7=-filter=\(crc,MD,CMAP,nofilter,deltadeg\)-filter=\(crc,MD,CMAP,nofilter,size_x_deltadeg\)-filter=\(crc,cpd05j08,CMAP,nofilter,deltadeg\)-filter=\(crc,cpd05j08,CMAP,nofilter,size_x_deltadeg\)-filter=\(crc,cpd07j08,CMAP,nofilter,deltadeg\)-filter=\(crc,cpd07j08,CMAP,nofilter,size_x_deltadeg\)
allfilters8=-filter=\(crc,MD,L1000,nofilter,deltadeg\)-filter=\(crc,MD,L1000,nofilter,size_x_deltadeg\)-filter=\(crc,cpd05j08,L1000,nofilter,deltadeg\)-filter=\(crc,cpd05j08,L1000,nofilter,size_x_deltadeg\)-filter=\(crc,cpd07j08,L1000,nofilter,deltadeg\)-filter=\(crc,cpd07j08,L1000,nofilter,size_x_deltadeg\)

allfilters=$allfilters1$allfilters2$allfilters3$allfilters4$allfilters5$allfilters6$allfilters7$allfilters8

echo GEO data filter
python drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=\(crc,GEO,0\) $allfilters  >   ./modulation-colorectal-cancer-results-pval-fdaonly-allposonly/test-filter-crc-2021-04-10-laptop-01.txt  
python drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=\(crc,GEO,1\) $allfilters  >   ./modulation-colorectal-cancer-results-pval-fdaonly-allposonly/test-filter-crc-2021-04-10-laptop-02.txt  
python drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=\(crc,GEO,2\) $allfilters   >  ./modulation-colorectal-cancer-results-pval-fdaonly-allposonly/test-filter-crc-2021-04-10-laptop-03.txt  
python drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=\(crc,GEO,3\) $allfilters   >  ./modulation-colorectal-cancer-results-pval-fdaonly-allposonly/test-filter-crc-2021-04-10-laptop-04.txt  
python drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=\(crc,GEO,4\) $allfilters   >  ./modulation-colorectal-cancer-results-pval-fdaonly-allposonly/test-filter-crc-2021-04-10-laptop-05.txt  
python drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=\(crc,GEO,5\) $allfilters   >  ./modulation-colorectal-cancer-results-pval-fdaonly-allposonly/test-filter-crc-2021-04-10-laptop-06.txt  
python drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=\(crc,GEO,6\) $allfilters   >  ./modulation-colorectal-cancer-results-pval-fdaonly-allposonly/test-filter-crc-2021-04-10-laptop-07.txt  


echo DM data filter
python drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=\(crc,DM,0\) $allfilters  >  ./modulation-colorectal-cancer-results-pval-fdaonly-allposonly/test-filter-crc-2021-04-10-laptop-11.txt  
python drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=\(crc,DM,1\) $allfilters  >  ./modulation-colorectal-cancer-results-pval-fdaonly-allposonly/test-filter-crc-2021-04-10-laptop-12.txt  
python drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=\(crc,DM,2\) $allfilters  >  ./modulation-colorectal-cancer-results-pval-fdaonly-allposonly/test-filter-crc-2021-04-10-laptop-13.txt  
python drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=\(crc,DM,3\) $allfilters  >  ./modulation-colorectal-cancer-results-pval-fdaonly-allposonly/test-filter-crc-2021-04-10-laptop-14.txt  
python drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=\(crc,DM,4\) $allfilters  >  ./modulation-colorectal-cancer-results-pval-fdaonly-allposonly/test-filter-crc-2021-04-10-laptop-15.txt  
python drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=\(crc,DM,5\) $allfilters  >  ./modulation-colorectal-cancer-results-pval-fdaonly-allposonly/test-filter-crc-2021-04-10-laptop-16.txt  
python drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=\(crc,DM,6\) $allfilters  >  ./modulation-colorectal-cancer-results-pval-fdaonly-allposonly/test-filter-crc-2021-04-10-laptop-17.txt  

#echo GEO data nofilter
#python drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=\(crc,GEO,0\) $allfilters >  ./modulation-colorectal-cancer-results-pval-fdaonly-allposonly/test-filter-crc-2021-04-10-laptop-21.txt  
#python drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=\(crc,GEO,1\) $allfilters >   ./modulation-colorectal-cancer-results-pval-fdaonly-allposonly/test-filter-crc-2021-04-10-laptop-22.txt  
#python drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=\(crc,GEO,2\) $allfilters >  ./modulation-colorectal-cancer-results-pval-fdaonly-allposonly/test-filter-crc-2021-04-10-laptop-23.txt  
#python drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=\(crc,GEO,3\) $allfilters >  ./modulation-colorectal-cancer-results-pval-fdaonly-allposonly/test-filter-crc-2021-04-10-laptop-24.txt  
#python drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=\(crc,GEO,4\) $allfilters >  ./modulation-colorectal-cancer-results-pval-fdaonly-allposonly/test-filter-crc-2021-04-10-laptop-25.txt  
#python drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=\(crc,GEO,5\) $allfilters >  ./modulation-colorectal-cancer-results-pval-fdaonly-allposonly/test-filter-crc-2021-04-10-laptop-26.txt  

#echo DM data nofilter
#python drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=\(crc,DM,0\) $allfilters  >  ./modulation-colorectal-cancer-results-pval-fdaonly-allposonly/test-filter-crc-2021-04-10-laptop-31.txt  
#python drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=\(crc,DM,1\) $allfilters  >  ./modulation-colorectal-cancer-results-pval-fdaonly-allposonly/test-filter-crc-2021-04-10-laptop-32.txt  
#python drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=\(crc,DM,2\) $allfilters  >  ./modulation-colorectal-cancer-results-pval-fdaonly-allposonly/test-filter-crc-2021-04-10-laptop-33.txt  
#python drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=\(crc,DM,3\) $allfilters  >  ./modulation-colorectal-cancer-results-pval-fdaonly-allposonly/test-filter-crc-2021-04-10-laptop-34.txt  
#python drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=\(crc,DM,4\) $allfilters  >  ./modulation-colorectal-cancer-results-pval-fdaonly-allposonly/test-filter-crc-2021-04-10-laptop-35.txt  
#python drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=\(crc,DM,5\) $allfilters  >  ./modulation-colorectal-cancer-results-pval-fdaonly-allposonly/test-filter-crc-2021-04-10-laptop-36.txt  

#

echo CMAPupdown data filter
python drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=\(crc,CMAPupdown,0\) $allfilters  >   ./modulation-colorectal-cancer-results-pval-fdaonly-allposonly/test-filter-crc-2021-04-10-laptop-41.txt  
python drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=\(crc,CMAPupdown,1\) $allfilters  >   ./modulation-colorectal-cancer-results-pval-fdaonly-allposonly/test-filter-crc-2021-04-10-laptop-42.txt  
python drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=\(crc,CMAPupdown,2\) $allfilters   >  ./modulation-colorectal-cancer-results-pval-fdaonly-allposonly/test-filter-crc-2021-04-10-laptop-43.txt  
python drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=\(crc,CMAPupdown,3\) $allfilters   >  ./modulation-colorectal-cancer-results-pval-fdaonly-allposonly/test-filter-crc-2021-04-10-laptop-44.txt  
python drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=\(crc,CMAPupdown,4\) $allfilters   >  ./modulation-colorectal-cancer-results-pval-fdaonly-allposonly/test-filter-crc-2021-04-10-laptop-45.txt  
python drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=\(crc,CMAPupdown,5\) $allfilters   >  ./modulation-colorectal-cancer-results-pval-fdaonly-allposonly/test-filter-crc-2021-04-10-laptop-46.txt  
python drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=\(crc,CMAPupdown,6\) $allfilters   >  ./modulation-colorectal-cancer-results-pval-fdaonly-allposonly/test-filter-crc-2021-04-10-laptop-47.txt  

echo L1000updown data filter
python drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=\(crc,L1000updown,0\) $allfilters  >  ./modulation-colorectal-cancer-results-pval-fdaonly-allposonly/test-filter-crc-2021-04-10-laptop-51.txt  
python drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=\(crc,L1000updown,1\) $allfilters  >  ./modulation-colorectal-cancer-results-pval-fdaonly-allposonly/test-filter-crc-2021-04-10-laptop-52.txt  
python drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=\(crc,L1000updown,2\) $allfilters  >  ./modulation-colorectal-cancer-results-pval-fdaonly-allposonly/test-filter-crc-2021-04-10-laptop-53.txt  
python drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=\(crc,L1000updown,3\) $allfilters  >  ./modulation-colorectal-cancer-results-pval-fdaonly-allposonly/test-filter-crc-2021-04-10-laptop-54.txt  
python drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=\(crc,L1000updown,4\) $allfilters  >  ./modulation-colorectal-cancer-results-pval-fdaonly-allposonly/test-filter-crc-2021-04-10-laptop-55.txt  
python drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=\(crc,L1000updown,5\) $allfilters  >  ./modulation-colorectal-cancer-results-pval-fdaonly-allposonly/test-filter-crc-2021-04-10-laptop-56.txt  
python drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=\(crc,L1000updown,6\) $allfilters  >  ./modulation-colorectal-cancer-results-pval-fdaonly-allposonly/test-filter-crc-2021-04-10-laptop-57.txt  

#echo CMAPupdown data nofilter
#python drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=\(crc,CMAPupdown,0\) $allfilters >  ./modulation-colorectal-cancer-results-pval-fdaonly-allposonly/test-filter-crc-2021-04-10-laptop-61.txt  
#python drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=\(crc,CMAPupdown,1\) $allfilters >   ./modulation-colorectal-cancer-results-pval-fdaonly-allposonly/test-filter-crc-2021-04-10-laptop-62.txt  
#python drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=\(crc,CMAPupdown,2\) $allfilters >  ./modulation-colorectal-cancer-results-pval-fdaonly-allposonly/test-filter-crc-2021-04-10-laptop-63.txt  
#python drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=\(crc,CMAPupdown,3\) $allfilters >  ./modulation-colorectal-cancer-results-pval-fdaonly-allposonly/test-filter-crc-2021-04-10-laptop-64.txt  
#python drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=\(crc,CMAPupdown,4\) $allfilters >  ./modulation-colorectal-cancer-results-pval-fdaonly-allposonly/test-filter-crc-2021-04-10-laptop-65.txt  
#python drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=\(crc,CMAPupdown,5\) $allfilters >  ./modulation-colorectal-cancer-results-pval-fdaonly-allposonly/test-filter-crc-2021-04-10-laptop-66.txt  

#echo L1000updown data nofilter
#python drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=\(crc,L1000updown,0\) $allfilters  >  ./modulation-colorectal-cancer-results-pval-fdaonly-allposonly/test-filter-crc-2021-04-10-laptop-71.txt  
#python drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=\(crc,L1000updown,1\) $allfilters  >  ./modulation-colorectal-cancer-results-pval-fdaonly-allposonly/test-filter-crc-2021-04-10-laptop-72.txt  
#python drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=\(crc,L1000updown,2\) $allfilters  >  ./modulation-colorectal-cancer-results-pval-fdaonly-allposonly/test-filter-crc-2021-04-10-laptop-73.txt  
#python drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=\(crc,L1000updown,3\) $allfilters  >  ./modulation-colorectal-cancer-results-pval-fdaonly-allposonly/test-filter-crc-2021-04-10-laptop-74.txt  
#python drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=\(crc,L1000updown,4\) $allfilters  >  ./modulation-colorectal-cancer-results-pval-fdaonly-allposonly/test-filter-crc-2021-04-10-laptop-75.txt  
#python drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=\(crc,L1000updown,5\) $allfilters  >  ./modulation-colorectal-cancer-results-pval-fdaonly-allposonly/test-filter-crc-2021-04-10-laptop-76.txt  
