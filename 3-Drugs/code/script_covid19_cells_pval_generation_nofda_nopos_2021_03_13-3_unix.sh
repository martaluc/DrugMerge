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
python drugranking.py  --mode=nofilter --fdadrugsonly=False  -conf=\(cells,GEO,0\) $allfilters1  >   ./modulation-covid19-cells-results-pval-nofda-nopos/test-filter-covid19-cells-2021-03-13-01.txt  
python drugranking.py  --mode=nofilter --fdadrugsonly=False  -conf=\(cells,GEO,1\) $allfilters1  >   ./modulation-covid19-cells-results-pval-nofda-nopos/test-filter-covid19-cells-2021-03-13-02.txt  
python drugranking.py  --mode=nofilter --fdadrugsonly=False  -conf=\(cells,GEO,2\) $allfilters1   >  ./modulation-covid19-cells-results-pval-nofda-nopos/test-filter-covid19-cells-2021-03-13-03.txt  
python drugranking.py  --mode=nofilter --fdadrugsonly=False  -conf=\(cells,GEO,3\) $allfilters1   >  ./modulation-covid19-cells-results-pval-nofda-nopos/test-filter-covid19-cells-2021-03-13-04.txt  
python drugranking.py  --mode=nofilter --fdadrugsonly=False  -conf=\(cells,GEO,4\) $allfilters1   >  ./modulation-covid19-cells-results-pval-nofda-nopos/test-filter-covid19-cells-2021-03-13-05.txt  
python drugranking.py  --mode=nofilter --fdadrugsonly=False  -conf=\(cells,GEO,5\) $allfilters1   >  ./modulation-covid19-cells-results-pval-nofda-nopos/test-filter-covid19-cells-2021-03-13-06.txt  

echo DM data filter
python drugranking.py  --mode=nofilter --fdadrugsonly=False  -conf=\(cells,DM,0\) $allfilters2  >  ./modulation-covid19-cells-results-pval-nofda-nopos/test-filter-covid19-cells-2021-03-13-11.txt  
python drugranking.py  --mode=nofilter --fdadrugsonly=False  -conf=\(cells,DM,1\) $allfilters2  >  ./modulation-covid19-cells-results-pval-nofda-nopos/test-filter-covid19-cells-2021-03-13-12.txt  
python drugranking.py  --mode=nofilter --fdadrugsonly=False  -conf=\(cells,DM,2\) $allfilters2  >  ./modulation-covid19-cells-results-pval-nofda-nopos/test-filter-covid19-cells-2021-03-13-13.txt  
python drugranking.py  --mode=nofilter --fdadrugsonly=False  -conf=\(cells,DM,3\) $allfilters2  >  ./modulation-covid19-cells-results-pval-nofda-nopos/test-filter-covid19-cells-2021-03-13-15.txt  
python drugranking.py  --mode=nofilter --fdadrugsonly=False  -conf=\(cells,DM,4\) $allfilters2  >  ./modulation-covid19-cells-results-pval-nofda-nopos/test-filter-covid19-cells-2021-03-13-15.txt  
python drugranking.py  --mode=nofilter --fdadrugsonly=False  -conf=\(cells,DM,5\) $allfilters2  >  ./modulation-covid19-cells-results-pval-nofda-nopos/test-filter-covid19-cells-2021-03-13-16.txt  

#echo GEO data nofilter
#python drugranking.py  --mode=nofilter --fdadrugsonly=False  -conf=\(cells,GEO,0\) $allfilters3 >  ./modulation-covid19-cells-results-pval-nofda-nopos/test-filter-covid19-cells-2021-03-13-21.txt  
#python drugranking.py  --mode=nofilter --fdadrugsonly=False  -conf=\(cells,GEO,1\) $allfilters3 >   ./modulation-covid19-cells-results-pval-nofda-nopos/test-filter-covid19-cells-2021-03-13-22.txt  
#python drugranking.py  --mode=nofilter --fdadrugsonly=False  -conf=\(cells,GEO,2\) $allfilters3 >  ./modulation-covid19-cells-results-pval-nofda-nopos/test-filter-covid19-cells-2021-03-13-23.txt  
#python drugranking.py  --mode=nofilter --fdadrugsonly=False  -conf=\(cells,GEO,3\) $allfilters3 >  ./modulation-covid19-cells-results-pval-nofda-nopos/test-filter-covid19-cells-2021-03-13-24.txt  
#python drugranking.py  --mode=nofilter --fdadrugsonly=False  -conf=\(cells,GEO,4\) $allfilters3 >  ./modulation-covid19-cells-results-pval-nofda-nopos/test-filter-covid19-cells-2021-03-13-25.txt  

#echo DM data nofilter
#python drugranking.py  --mode=nofilter --fdadrugsonly=False  -conf=\(cells,DM,0\) $allfilters4  >  ./modulation-covid19-cells-results-pval-nofda-nopos/test-filter-covid19-cells-2021-03-13-31.txt  
#python drugranking.py  --mode=nofilter --fdadrugsonly=False  -conf=\(cells,DM,1\) $allfilters4  >  ./modulation-covid19-cells-results-pval-nofda-nopos/test-filter-covid19-cells-2021-03-13-32.txt  
#python drugranking.py  --mode=nofilter --fdadrugsonly=False  -conf=\(cells,DM,2\) $allfilters4  >  ./modulation-covid19-cells-results-pval-nofda-nopos/test-filter-covid19-cells-2021-03-13-33.txt  
#python drugranking.py  --mode=nofilter --fdadrugsonly=False  -conf=\(cells,DM,3\) $allfilters4  >  ./modulation-covid19-cells-results-pval-nofda-nopos/test-filter-covid19-cells-2021-03-13-34.txt  
#python drugranking.py  --mode=nofilter --fdadrugsonly=False  -conf=\(cells,DM,4\) $allfilters4  >  ./modulation-covid19-cells-results-pval-nofda-nopos/test-filter-covid19-cells-2021-03-13-35.txt  

#

echo CMAPupdown data filter
python drugranking.py  --mode=nofilter --fdadrugsonly=False  -conf=\(cells,CMAPupdown,0\) $allfilters5  >   ./modulation-covid19-cells-results-pval-nofda-nopos/test-filter-covid19-cells-2021-03-13-41.txt  
python drugranking.py  --mode=nofilter --fdadrugsonly=False  -conf=\(cells,CMAPupdown,1\) $allfilters5  >   ./modulation-covid19-cells-results-pval-nofda-nopos/test-filter-covid19-cells-2021-03-13-42.txt  
python drugranking.py  --mode=nofilter --fdadrugsonly=False  -conf=\(cells,CMAPupdown,2\) $allfilters5   >  ./modulation-covid19-cells-results-pval-nofda-nopos/test-filter-covid19-cells-2021-03-13-43.txt  
python drugranking.py  --mode=nofilter --fdadrugsonly=False  -conf=\(cells,CMAPupdown,3\) $allfilters5   >  ./modulation-covid19-cells-results-pval-nofda-nopos/test-filter-covid19-cells-2021-03-13-44.txt  
python drugranking.py  --mode=nofilter --fdadrugsonly=False  -conf=\(cells,CMAPupdown,4\) $allfilters5   >  ./modulation-covid19-cells-results-pval-nofda-nopos/test-filter-covid19-cells-2021-03-13-45.txt  
python drugranking.py  --mode=nofilter --fdadrugsonly=False  -conf=\(cells,CMAPupdown,5\) $allfilters5   >  ./modulation-covid19-cells-results-pval-nofda-nopos/test-filter-covid19-cells-2021-03-13-46.txt  

echo L1000updown data filter
python drugranking.py  --mode=nofilter --fdadrugsonly=False  -conf=\(cells,L1000updown,0\) $allfilters6  >  ./modulation-covid19-cells-results-pval-nofda-nopos/test-filter-covid19-cells-2021-03-13-51.txt  
python drugranking.py  --mode=nofilter --fdadrugsonly=False  -conf=\(cells,L1000updown,1\) $allfilters6  >  ./modulation-covid19-cells-results-pval-nofda-nopos/test-filter-covid19-cells-2021-03-13-52.txt  
python drugranking.py  --mode=nofilter --fdadrugsonly=False  -conf=\(cells,L1000updown,2\) $allfilters6  >  ./modulation-covid19-cells-results-pval-nofda-nopos/test-filter-covid19-cells-2021-03-13-53.txt  
python drugranking.py  --mode=nofilter --fdadrugsonly=False  -conf=\(cells,L1000updown,3\) $allfilters6  >  ./modulation-covid19-cells-results-pval-nofda-nopos/test-filter-covid19-cells-2021-03-13-55.txt  
python drugranking.py  --mode=nofilter --fdadrugsonly=False  -conf=\(cells,L1000updown,4\) $allfilters6  >  ./modulation-covid19-cells-results-pval-nofda-nopos/test-filter-covid19-cells-2021-03-13-55.txt  
python drugranking.py  --mode=nofilter --fdadrugsonly=False  -conf=\(cells,L1000updown,5\) $allfilters6  >  ./modulation-covid19-cells-results-pval-nofda-nopos/test-filter-covid19-cells-2021-03-13-56.txt  

#echo CMAPupdown data nofilter
#python drugranking.py  --mode=nofilter --fdadrugsonly=False  -conf=\(cells,CMAPupdown,0\) $allfilters7 >  ./modulation-covid19-cells-results-pval-nofda-nopos/test-filter-covid19-cells-2021-03-13-61.txt  
#python drugranking.py  --mode=nofilter --fdadrugsonly=False  -conf=\(cells,CMAPupdown,1\) $allfilters7 >   ./modulation-covid19-cells-results-pval-nofda-nopos/test-filter-covid19-cells-2021-03-13-62.txt  
#python drugranking.py  --mode=nofilter --fdadrugsonly=False  -conf=\(cells,CMAPupdown,2\) $allfilters7 >  ./modulation-covid19-cells-results-pval-nofda-nopos/test-filter-covid19-cells-2021-03-13-63.txt  
#python drugranking.py  --mode=nofilter --fdadrugsonly=False  -conf=\(cells,CMAPupdown,3\) $allfilters7 >  ./modulation-covid19-cells-results-pval-nofda-nopos/test-filter-covid19-cells-2021-03-13-64.txt  
#python drugranking.py  --mode=nofilter --fdadrugsonly=False  -conf=\(cells,CMAPupdown,4\) $allfilters7 >  ./modulation-covid19-cells-results-pval-nofda-nopos/test-filter-covid19-cells-2021-03-13-65.txt  

#echo L1000updown data nofilter
#python drugranking.py  --mode=nofilter --fdadrugsonly=False  -conf=\(cells,L1000updown,0\) $allfilters8  >  ./modulation-covid19-cells-results-pval-nofda-nopos/test-filter-covid19-cells-2021-03-13-71.txt  
#python drugranking.py  --mode=nofilter --fdadrugsonly=False  -conf=\(cells,L1000updown,1\) $allfilters8  >  ./modulation-covid19-cells-results-pval-nofda-nopos/test-filter-covid19-cells-2021-03-13-72.txt  
#python drugranking.py  --mode=nofilter --fdadrugsonly=False  -conf=\(cells,L1000updown,2\) $allfilters8  >  ./modulation-covid19-cells-results-pval-nofda-nopos/test-filter-covid19-cells-2021-03-13-73.txt  
#python drugranking.py  --mode=nofilter --fdadrugsonly=False  -conf=\(cells,L1000updown,3\) $allfilters8  >  ./modulation-covid19-cells-results-pval-nofda-nopos/test-filter-covid19-cells-2021-03-13-74.txt  
#python drugranking.py  --mode=nofilter --fdadrugsonly=False  -conf=\(cells,L1000updown,4\) $allfilters8  >  ./modulation-covid19-cells-results-pval-nofda-nopos/test-filter-covid19-cells-2021-03-13-75.txt  
