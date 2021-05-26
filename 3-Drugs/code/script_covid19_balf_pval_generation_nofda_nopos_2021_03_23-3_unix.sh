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
python drugranking.py  --mode=nofilter --fdadrugsonly=False  -conf=\(balf,GEO,0\) $allfilters1  >   ./modulation-covid19-balf-results-pval-nofda-nopos/test-filter-covid19-balf-2021-03-23-laptop-01.txt  
python drugranking.py  --mode=nofilter --fdadrugsonly=False  -conf=\(balf,GEO,1\) $allfilters1  >   ./modulation-covid19-balf-results-pval-nofda-nopos/test-filter-covid19-balf-2021-03-23-laptop-02.txt  
python drugranking.py  --mode=nofilter --fdadrugsonly=False  -conf=\(balf,GEO,2\) $allfilters1   >  ./modulation-covid19-balf-results-pval-nofda-nopos/test-filter-covid19-balf-2021-03-23-laptop-03.txt  
python drugranking.py  --mode=nofilter --fdadrugsonly=False  -conf=\(balf,GEO,3\) $allfilters1   >  ./modulation-covid19-balf-results-pval-nofda-nopos/test-filter-covid19-balf-2021-03-23-laptop-04.txt  
python drugranking.py  --mode=nofilter --fdadrugsonly=False  -conf=\(balf,GEO,4\) $allfilters1   >  ./modulation-covid19-balf-results-pval-nofda-nopos/test-filter-covid19-balf-2021-03-23-laptop-05.txt  
python drugranking.py  --mode=nofilter --fdadrugsonly=False  -conf=\(balf,GEO,5\) $allfilters1   >  ./modulation-covid19-balf-results-pval-nofda-nopos/test-filter-covid19-balf-2021-03-23-laptop-06.txt  
python drugranking.py  --mode=nofilter --fdadrugsonly=False  -conf=\(balf,GEO,6\) $allfilters1   >  ./modulation-covid19-balf-results-pval-nofda-nopos/test-filter-covid19-balf-2021-03-23-laptop-07.txt  

echo DM data filter
python drugranking.py  --mode=nofilter --fdadrugsonly=False  -conf=\(balf,DM,0\) $allfilters2  >  ./modulation-covid19-balf-results-pval-nofda-nopos/test-filter-covid19-balf-2021-03-23-laptop-11.txt  
python drugranking.py  --mode=nofilter --fdadrugsonly=False  -conf=\(balf,DM,1\) $allfilters2  >  ./modulation-covid19-balf-results-pval-nofda-nopos/test-filter-covid19-balf-2021-03-23-laptop-12.txt  
python drugranking.py  --mode=nofilter --fdadrugsonly=False  -conf=\(balf,DM,2\) $allfilters2  >  ./modulation-covid19-balf-results-pval-nofda-nopos/test-filter-covid19-balf-2021-03-23-laptop-13.txt  
python drugranking.py  --mode=nofilter --fdadrugsonly=False  -conf=\(balf,DM,3\) $allfilters2  >  ./modulation-covid19-balf-results-pval-nofda-nopos/test-filter-covid19-balf-2021-03-23-laptop-15.txt  
python drugranking.py  --mode=nofilter --fdadrugsonly=False  -conf=\(balf,DM,4\) $allfilters2  >  ./modulation-covid19-balf-results-pval-nofda-nopos/test-filter-covid19-balf-2021-03-23-laptop-15.txt  
python drugranking.py  --mode=nofilter --fdadrugsonly=False  -conf=\(balf,DM,5\) $allfilters2  >  ./modulation-covid19-balf-results-pval-nofda-nopos/test-filter-covid19-balf-2021-03-23-laptop-16.txt  
python drugranking.py  --mode=nofilter --fdadrugsonly=False  -conf=\(balf,DM,6\) $allfilters2  >  ./modulation-covid19-balf-results-pval-nofda-nopos/test-filter-covid19-balf-2021-03-23-laptop-17.txt  

#echo GEO data nofilter
#python drugranking.py  --mode=nofilter --fdadrugsonly=False  -conf=\(balf,GEO,0\) $allfilters3 >  ./modulation-covid19-balf-results-pval-nofda-nopos/test-filter-covid19-balf-2021-03-23-laptop-21.txt  
#python drugranking.py  --mode=nofilter --fdadrugsonly=False  -conf=\(balf,GEO,1\) $allfilters3 >   ./modulation-covid19-balf-results-pval-nofda-nopos/test-filter-covid19-balf-2021-03-23-laptop-22.txt  
#python drugranking.py  --mode=nofilter --fdadrugsonly=False  -conf=\(balf,GEO,2\) $allfilters3 >  ./modulation-covid19-balf-results-pval-nofda-nopos/test-filter-covid19-balf-2021-03-23-laptop-23.txt  
#python drugranking.py  --mode=nofilter --fdadrugsonly=False  -conf=\(balf,GEO,3\) $allfilters3 >  ./modulation-covid19-balf-results-pval-nofda-nopos/test-filter-covid19-balf-2021-03-23-laptop-24.txt  
#python drugranking.py  --mode=nofilter --fdadrugsonly=False  -conf=\(balf,GEO,4\) $allfilters3 >  ./modulation-covid19-balf-results-pval-nofda-nopos/test-filter-covid19-balf-2021-03-23-laptop-25.txt  

#echo DM data nofilter
#python drugranking.py  --mode=nofilter --fdadrugsonly=False  -conf=\(balf,DM,0\) $allfilters4  >  ./modulation-covid19-balf-results-pval-nofda-nopos/test-filter-covid19-balf-2021-03-23-laptop-31.txt  
#python drugranking.py  --mode=nofilter --fdadrugsonly=False  -conf=\(balf,DM,1\) $allfilters4  >  ./modulation-covid19-balf-results-pval-nofda-nopos/test-filter-covid19-balf-2021-03-23-laptop-32.txt  
#python drugranking.py  --mode=nofilter --fdadrugsonly=False  -conf=\(balf,DM,2\) $allfilters4  >  ./modulation-covid19-balf-results-pval-nofda-nopos/test-filter-covid19-balf-2021-03-23-laptop-33.txt  
#python drugranking.py  --mode=nofilter --fdadrugsonly=False  -conf=\(balf,DM,3\) $allfilters4  >  ./modulation-covid19-balf-results-pval-nofda-nopos/test-filter-covid19-balf-2021-03-23-laptop-34.txt  
#python drugranking.py  --mode=nofilter --fdadrugsonly=False  -conf=\(balf,DM,4\) $allfilters4  >  ./modulation-covid19-balf-results-pval-nofda-nopos/test-filter-covid19-balf-2021-03-23-laptop-35.txt  

#

echo CMAPupdown data filter
python drugranking.py  --mode=nofilter --fdadrugsonly=False  -conf=\(balf,CMAPupdown,0\) $allfilters5  >   ./modulation-covid19-balf-results-pval-nofda-nopos/test-filter-covid19-balf-2021-03-23-laptop-41.txt  
python drugranking.py  --mode=nofilter --fdadrugsonly=False  -conf=\(balf,CMAPupdown,1\) $allfilters5  >   ./modulation-covid19-balf-results-pval-nofda-nopos/test-filter-covid19-balf-2021-03-23-laptop-42.txt  
python drugranking.py  --mode=nofilter --fdadrugsonly=False  -conf=\(balf,CMAPupdown,2\) $allfilters5   >  ./modulation-covid19-balf-results-pval-nofda-nopos/test-filter-covid19-balf-2021-03-23-laptop-43.txt  
python drugranking.py  --mode=nofilter --fdadrugsonly=False  -conf=\(balf,CMAPupdown,3\) $allfilters5   >  ./modulation-covid19-balf-results-pval-nofda-nopos/test-filter-covid19-balf-2021-03-23-laptop-44.txt  
python drugranking.py  --mode=nofilter --fdadrugsonly=False  -conf=\(balf,CMAPupdown,4\) $allfilters5   >  ./modulation-covid19-balf-results-pval-nofda-nopos/test-filter-covid19-balf-2021-03-23-laptop-45.txt  
python drugranking.py  --mode=nofilter --fdadrugsonly=False  -conf=\(balf,CMAPupdown,5\) $allfilters5   >  ./modulation-covid19-balf-results-pval-nofda-nopos/test-filter-covid19-balf-2021-03-23-laptop-46.txt  
python drugranking.py  --mode=nofilter --fdadrugsonly=False  -conf=\(balf,CMAPupdown,6\) $allfilters5   >  ./modulation-covid19-balf-results-pval-nofda-nopos/test-filter-covid19-balf-2021-03-23-laptop-47.txt  

echo L1000updown data filter
python drugranking.py  --mode=nofilter --fdadrugsonly=False  -conf=\(balf,L1000updown,0\) $allfilters6  >  ./modulation-covid19-balf-results-pval-nofda-nopos/test-filter-covid19-balf-2021-03-23-laptop-51.txt  
python drugranking.py  --mode=nofilter --fdadrugsonly=False  -conf=\(balf,L1000updown,1\) $allfilters6  >  ./modulation-covid19-balf-results-pval-nofda-nopos/test-filter-covid19-balf-2021-03-23-laptop-52.txt  
python drugranking.py  --mode=nofilter --fdadrugsonly=False  -conf=\(balf,L1000updown,2\) $allfilters6  >  ./modulation-covid19-balf-results-pval-nofda-nopos/test-filter-covid19-balf-2021-03-23-laptop-53.txt  
python drugranking.py  --mode=nofilter --fdadrugsonly=False  -conf=\(balf,L1000updown,3\) $allfilters6  >  ./modulation-covid19-balf-results-pval-nofda-nopos/test-filter-covid19-balf-2021-03-23-laptop-55.txt  
python drugranking.py  --mode=nofilter --fdadrugsonly=False  -conf=\(balf,L1000updown,4\) $allfilters6  >  ./modulation-covid19-balf-results-pval-nofda-nopos/test-filter-covid19-balf-2021-03-23-laptop-55.txt  
python drugranking.py  --mode=nofilter --fdadrugsonly=False  -conf=\(balf,L1000updown,5\) $allfilters6  >  ./modulation-covid19-balf-results-pval-nofda-nopos/test-filter-covid19-balf-2021-03-23-laptop-56.txt  
python drugranking.py  --mode=nofilter --fdadrugsonly=False  -conf=\(balf,L1000updown,6\) $allfilters6  >  ./modulation-covid19-balf-results-pval-nofda-nopos/test-filter-covid19-balf-2021-03-23-laptop-57.txt  

#echo CMAPupdown data nofilter
#python drugranking.py  --mode=nofilter --fdadrugsonly=False  -conf=\(balf,CMAPupdown,0\) $allfilters7 >  ./modulation-covid19-balf-results-pval-nofda-nopos/test-filter-covid19-balf-2021-03-23-laptop-61.txt  
#python drugranking.py  --mode=nofilter --fdadrugsonly=False  -conf=\(balf,CMAPupdown,1\) $allfilters7 >   ./modulation-covid19-balf-results-pval-nofda-nopos/test-filter-covid19-balf-2021-03-23-laptop-62.txt  
#python drugranking.py  --mode=nofilter --fdadrugsonly=False  -conf=\(balf,CMAPupdown,2\) $allfilters7 >  ./modulation-covid19-balf-results-pval-nofda-nopos/test-filter-covid19-balf-2021-03-23-laptop-63.txt  
#python drugranking.py  --mode=nofilter --fdadrugsonly=False  -conf=\(balf,CMAPupdown,3\) $allfilters7 >  ./modulation-covid19-balf-results-pval-nofda-nopos/test-filter-covid19-balf-2021-03-23-laptop-64.txt  
#python drugranking.py  --mode=nofilter --fdadrugsonly=False  -conf=\(balf,CMAPupdown,4\) $allfilters7 >  ./modulation-covid19-balf-results-pval-nofda-nopos/test-filter-covid19-balf-2021-03-23-laptop-65.txt  

#echo L1000updown data nofilter
#python drugranking.py  --mode=nofilter --fdadrugsonly=False  -conf=\(balf,L1000updown,0\) $allfilters8  >  ./modulation-covid19-balf-results-pval-nofda-nopos/test-filter-covid19-balf-2021-03-23-laptop-71.txt  
#python drugranking.py  --mode=nofilter --fdadrugsonly=False  -conf=\(balf,L1000updown,1\) $allfilters8  >  ./modulation-covid19-balf-results-pval-nofda-nopos/test-filter-covid19-balf-2021-03-23-laptop-72.txt  
#python drugranking.py  --mode=nofilter --fdadrugsonly=False  -conf=\(balf,L1000updown,2\) $allfilters8  >  ./modulation-covid19-balf-results-pval-nofda-nopos/test-filter-covid19-balf-2021-03-23-laptop-73.txt  
#python drugranking.py  --mode=nofilter --fdadrugsonly=False  -conf=\(balf,L1000updown,3\) $allfilters8  >  ./modulation-covid19-balf-results-pval-nofda-nopos/test-filter-covid19-balf-2021-03-23-laptop-74.txt  
#python drugranking.py  --mode=nofilter --fdadrugsonly=False  -conf=\(balf,L1000updown,4\) $allfilters8  >  ./modulation-covid19-balf-results-pval-nofda-nopos/test-filter-covid19-balf-2021-03-23-laptop-75.txt  
