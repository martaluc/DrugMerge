#!/bin/csh
echo  generation of ranking by pvalue with positive filtering

allfilters1=
allfilters2=
allfilters3=
allfilters4=
allfilters5=
allfilters6=
allfilters7=
allfilters8=

echo GEO data filter
python drugranking.py  --mode=nofilter --fdadrugsonly=True  -conf=\(crc,GEO,0\) $allfilters1  >   ./modulation-colorectal-cancer-results-pval-fdaonly-nopos/test-filter-crc-2021-04-10-laptop-01.txt  
python drugranking.py  --mode=nofilter --fdadrugsonly=True  -conf=\(crc,GEO,1\) $allfilters1  >   ./modulation-colorectal-cancer-results-pval-fdaonly-nopos/test-filter-crc-2021-04-10-laptop-02.txt  
python drugranking.py  --mode=nofilter --fdadrugsonly=True  -conf=\(crc,GEO,2\) $allfilters1   >  ./modulation-colorectal-cancer-results-pval-fdaonly-nopos/test-filter-crc-2021-04-10-laptop-03.txt  
python drugranking.py  --mode=nofilter --fdadrugsonly=True  -conf=\(crc,GEO,3\) $allfilters1   >  ./modulation-colorectal-cancer-results-pval-fdaonly-nopos/test-filter-crc-2021-04-10-laptop-04.txt  
python drugranking.py  --mode=nofilter --fdadrugsonly=True  -conf=\(crc,GEO,4\) $allfilters1   >  ./modulation-colorectal-cancer-results-pval-fdaonly-nopos/test-filter-crc-2021-04-10-laptop-05.txt  
python drugranking.py  --mode=nofilter --fdadrugsonly=True  -conf=\(crc,GEO,5\) $allfilters1   >  ./modulation-colorectal-cancer-results-pval-fdaonly-nopos/test-filter-crc-2021-04-10-laptop-06.txt  
python drugranking.py  --mode=nofilter --fdadrugsonly=True  -conf=\(crc,GEO,6\) $allfilters1   >  ./modulation-colorectal-cancer-results-pval-fdaonly-nopos/test-filter-crc-2021-04-10-laptop-07.txt  

echo DM data filter
python drugranking.py  --mode=nofilter --fdadrugsonly=True  -conf=\(crc,DM,0\) $allfilters2  >  ./modulation-colorectal-cancer-results-pval-fdaonly-nopos/test-filter-crc-2021-04-10-laptop-11.txt  
python drugranking.py  --mode=nofilter --fdadrugsonly=True  -conf=\(crc,DM,1\) $allfilters2  >  ./modulation-colorectal-cancer-results-pval-fdaonly-nopos/test-filter-crc-2021-04-10-laptop-12.txt  
python drugranking.py  --mode=nofilter --fdadrugsonly=True  -conf=\(crc,DM,2\) $allfilters2  >  ./modulation-colorectal-cancer-results-pval-fdaonly-nopos/test-filter-crc-2021-04-10-laptop-13.txt  
python drugranking.py  --mode=nofilter --fdadrugsonly=True  -conf=\(crc,DM,3\) $allfilters2  >  ./modulation-colorectal-cancer-results-pval-fdaonly-nopos/test-filter-crc-2021-04-10-laptop-15.txt  
python drugranking.py  --mode=nofilter --fdadrugsonly=True  -conf=\(crc,DM,4\) $allfilters2  >  ./modulation-colorectal-cancer-results-pval-fdaonly-nopos/test-filter-crc-2021-04-10-laptop-15.txt  
python drugranking.py  --mode=nofilter --fdadrugsonly=True  -conf=\(crc,DM,5\) $allfilters2  >  ./modulation-colorectal-cancer-results-pval-fdaonly-nopos/test-filter-crc-2021-04-10-laptop-16.txt  
python drugranking.py  --mode=nofilter --fdadrugsonly=True  -conf=\(crc,DM,6\) $allfilters2  >  ./modulation-colorectal-cancer-results-pval-fdaonly-nopos/test-filter-crc-2021-04-10-laptop-17.txt  

#echo GEO data nofilter
#python drugranking.py  --mode=nofilter --fdadrugsonly=True  -conf=\(crc,GEO,0\) $allfilters3 >  ./modulation-colorectal-cancer-results-pval-fdaonly-nopos/test-filter-crc-2021-04-10-laptop-21.txt  
#python drugranking.py  --mode=nofilter --fdadrugsonly=True  -conf=\(crc,GEO,1\) $allfilters3 >   ./modulation-colorectal-cancer-results-pval-fdaonly-nopos/test-filter-crc-2021-04-10-laptop-22.txt  
#python drugranking.py  --mode=nofilter --fdadrugsonly=True  -conf=\(crc,GEO,2\) $allfilters3 >  ./modulation-colorectal-cancer-results-pval-fdaonly-nopos/test-filter-crc-2021-04-10-laptop-23.txt  
#python drugranking.py  --mode=nofilter --fdadrugsonly=True  -conf=\(crc,GEO,3\) $allfilters3 >  ./modulation-colorectal-cancer-results-pval-fdaonly-nopos/test-filter-crc-2021-04-10-laptop-24.txt  
#python drugranking.py  --mode=nofilter --fdadrugsonly=True  -conf=\(crc,GEO,4\) $allfilters3 >  ./modulation-colorectal-cancer-results-pval-fdaonly-nopos/test-filter-crc-2021-04-10-laptop-25.txt  

#echo DM data nofilter
#python drugranking.py  --mode=nofilter --fdadrugsonly=True  -conf=\(crc,DM,0\) $allfilters4  >  ./modulation-colorectal-cancer-results-pval-fdaonly-nopos/test-filter-crc-2021-04-10-laptop-31.txt  
#python drugranking.py  --mode=nofilter --fdadrugsonly=True  -conf=\(crc,DM,1\) $allfilters4  >  ./modulation-colorectal-cancer-results-pval-fdaonly-nopos/test-filter-crc-2021-04-10-laptop-32.txt  
#python drugranking.py  --mode=nofilter --fdadrugsonly=True  -conf=\(crc,DM,2\) $allfilters4  >  ./modulation-colorectal-cancer-results-pval-fdaonly-nopos/test-filter-crc-2021-04-10-laptop-33.txt  
#python drugranking.py  --mode=nofilter --fdadrugsonly=True  -conf=\(crc,DM,3\) $allfilters4  >  ./modulation-colorectal-cancer-results-pval-fdaonly-nopos/test-filter-crc-2021-04-10-laptop-34.txt  
#python drugranking.py  --mode=nofilter --fdadrugsonly=True  -conf=\(crc,DM,4\) $allfilters4  >  ./modulation-colorectal-cancer-results-pval-fdaonly-nopos/test-filter-crc-2021-04-10-laptop-35.txt  

#

echo CMAPupdown data filter
python drugranking.py  --mode=nofilter --fdadrugsonly=True  -conf=\(crc,CMAPupdown,0\) $allfilters5  >   ./modulation-colorectal-cancer-results-pval-fdaonly-nopos/test-filter-crc-2021-04-10-laptop-41.txt  
python drugranking.py  --mode=nofilter --fdadrugsonly=True  -conf=\(crc,CMAPupdown,1\) $allfilters5  >   ./modulation-colorectal-cancer-results-pval-fdaonly-nopos/test-filter-crc-2021-04-10-laptop-42.txt  
python drugranking.py  --mode=nofilter --fdadrugsonly=True  -conf=\(crc,CMAPupdown,2\) $allfilters5   >  ./modulation-colorectal-cancer-results-pval-fdaonly-nopos/test-filter-crc-2021-04-10-laptop-43.txt  
python drugranking.py  --mode=nofilter --fdadrugsonly=True  -conf=\(crc,CMAPupdown,3\) $allfilters5   >  ./modulation-colorectal-cancer-results-pval-fdaonly-nopos/test-filter-crc-2021-04-10-laptop-44.txt  
python drugranking.py  --mode=nofilter --fdadrugsonly=True  -conf=\(crc,CMAPupdown,4\) $allfilters5   >  ./modulation-colorectal-cancer-results-pval-fdaonly-nopos/test-filter-crc-2021-04-10-laptop-45.txt  
python drugranking.py  --mode=nofilter --fdadrugsonly=True  -conf=\(crc,CMAPupdown,5\) $allfilters5   >  ./modulation-colorectal-cancer-results-pval-fdaonly-nopos/test-filter-crc-2021-04-10-laptop-46.txt  
python drugranking.py  --mode=nofilter --fdadrugsonly=True  -conf=\(crc,CMAPupdown,6\) $allfilters5   >  ./modulation-colorectal-cancer-results-pval-fdaonly-nopos/test-filter-crc-2021-04-10-laptop-47.txt  

echo L1000updown data filter
python drugranking.py  --mode=nofilter --fdadrugsonly=True  -conf=\(crc,L1000updown,0\) $allfilters6  >  ./modulation-colorectal-cancer-results-pval-fdaonly-nopos/test-filter-crc-2021-04-10-laptop-51.txt  
python drugranking.py  --mode=nofilter --fdadrugsonly=True  -conf=\(crc,L1000updown,1\) $allfilters6  >  ./modulation-colorectal-cancer-results-pval-fdaonly-nopos/test-filter-crc-2021-04-10-laptop-52.txt  
python drugranking.py  --mode=nofilter --fdadrugsonly=True  -conf=\(crc,L1000updown,2\) $allfilters6  >  ./modulation-colorectal-cancer-results-pval-fdaonly-nopos/test-filter-crc-2021-04-10-laptop-53.txt  
python drugranking.py  --mode=nofilter --fdadrugsonly=True  -conf=\(crc,L1000updown,3\) $allfilters6  >  ./modulation-colorectal-cancer-results-pval-fdaonly-nopos/test-filter-crc-2021-04-10-laptop-55.txt  
python drugranking.py  --mode=nofilter --fdadrugsonly=True  -conf=\(crc,L1000updown,4\) $allfilters6  >  ./modulation-colorectal-cancer-results-pval-fdaonly-nopos/test-filter-crc-2021-04-10-laptop-55.txt  
python drugranking.py  --mode=nofilter --fdadrugsonly=True  -conf=\(crc,L1000updown,5\) $allfilters6  >  ./modulation-colorectal-cancer-results-pval-fdaonly-nopos/test-filter-crc-2021-04-10-laptop-56.txt  
python drugranking.py  --mode=nofilter --fdadrugsonly=True  -conf=\(crc,L1000updown,6\) $allfilters6  >  ./modulation-colorectal-cancer-results-pval-fdaonly-nopos/test-filter-crc-2021-04-10-laptop-57.txt  

#echo CMAPupdown data nofilter
#python drugranking.py  --mode=nofilter --fdadrugsonly=True  -conf=\(crc,CMAPupdown,0\) $allfilters7 >  ./modulation-colorectal-cancer-results-pval-fdaonly-nopos/test-filter-crc-2021-04-10-laptop-61.txt  
#python drugranking.py  --mode=nofilter --fdadrugsonly=True  -conf=\(crc,CMAPupdown,1\) $allfilters7 >   ./modulation-colorectal-cancer-results-pval-fdaonly-nopos/test-filter-crc-2021-04-10-laptop-62.txt  
#python drugranking.py  --mode=nofilter --fdadrugsonly=True  -conf=\(crc,CMAPupdown,2\) $allfilters7 >  ./modulation-colorectal-cancer-results-pval-fdaonly-nopos/test-filter-crc-2021-04-10-laptop-63.txt  
#python drugranking.py  --mode=nofilter --fdadrugsonly=True  -conf=\(crc,CMAPupdown,3\) $allfilters7 >  ./modulation-colorectal-cancer-results-pval-fdaonly-nopos/test-filter-crc-2021-04-10-laptop-64.txt  
#python drugranking.py  --mode=nofilter --fdadrugsonly=True  -conf=\(crc,CMAPupdown,4\) $allfilters7 >  ./modulation-colorectal-cancer-results-pval-fdaonly-nopos/test-filter-crc-2021-04-10-laptop-65.txt  

#echo L1000updown data nofilter
#python drugranking.py  --mode=nofilter --fdadrugsonly=True  -conf=\(crc,L1000updown,0\) $allfilters8  >  ./modulation-colorectal-cancer-results-pval-fdaonly-nopos/test-filter-crc-2021-04-10-laptop-71.txt  
#python drugranking.py  --mode=nofilter --fdadrugsonly=True  -conf=\(crc,L1000updown,1\) $allfilters8  >  ./modulation-colorectal-cancer-results-pval-fdaonly-nopos/test-filter-crc-2021-04-10-laptop-72.txt  
#python drugranking.py  --mode=nofilter --fdadrugsonly=True  -conf=\(crc,L1000updown,2\) $allfilters8  >  ./modulation-colorectal-cancer-results-pval-fdaonly-nopos/test-filter-crc-2021-04-10-laptop-73.txt  
#python drugranking.py  --mode=nofilter --fdadrugsonly=True  -conf=\(crc,L1000updown,3\) $allfilters8  >  ./modulation-colorectal-cancer-results-pval-fdaonly-nopos/test-filter-crc-2021-04-10-laptop-74.txt  
#python drugranking.py  --mode=nofilter --fdadrugsonly=True  -conf=\(crc,L1000updown,4\) $allfilters8  >  ./modulation-colorectal-cancer-results-pval-fdaonly-nopos/test-filter-crc-2021-04-10-laptop-75.txt  
