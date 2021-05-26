@ECHO OFF
ECHO  generation of ranking by pvalue with positive filtering

SET allfilters1=
SET allfilters2=
SET allfilters3=
SET allfilters4=
SET allfilters5=
SET allfilters6=
SET allfilters7=
SET allfilters8=

ECHO GEO data filter
drugranking.py  --mode=nofilter --fdadrugsonly=True  -conf=(cells,GEO,0) -conf=(cells,GEO,2) %allfilters1%  >   ./modulation-covid19-cells-results-pval-fdaonly-nopos/merge-filter-covid19-cells-2021-03-15-01.txt
::drugranking.py  --mode=nofilter --fdadrugsonly=True  -conf=(cells,GEO,1) %allfilters1%  >   ./modulation-covid19-cells-results-pval-fdaonly-nopos/merge-filter-covid19-cells-2021-03-15-02.txt
::drugranking.py  --mode=nofilter --fdadrugsonly=True  -conf=(cells,GEO,2) %allfilters1%   >  ./modulation-covid19-cells-results-pval-fdaonly-nopos/merge-filter-covid19-cells-2021-03-15-03.txt
::drugranking.py  --mode=nofilter --fdadrugsonly=True  -conf=(cells,GEO,3) %allfilters1%   >  ./modulation-covid19-cells-results-pval-fdaonly-nopos/merge-filter-covid19-cells-2021-03-15-04.txt
::drugranking.py  --mode=nofilter --fdadrugsonly=True  -conf=(cells,GEO,4) %allfilters1%   >  ./modulation-covid19-cells-results-pval-fdaonly-nopos/merge-filter-covid19-cells-2021-03-15-05.txt
::drugranking.py  --mode=nofilter --fdadrugsonly=True  -conf=(cells,GEO,5) %allfilters1%   >  ./modulation-covid19-cells-results-pval-fdaonly-nopos/merge-filter-covid19-cells-2021-03-15-06.txt

ECHO DM data filter
::drugranking.py  --mode=nofilter --fdadrugsonly=True  -conf=(cells,DM,0) %allfilters2%  >  ./modulation-covid19-cells-results-pval-fdaonly-nopos/merge-filter-covid19-cells-2021-03-15-11.txt
::drugranking.py  --mode=nofilter --fdadrugsonly=True  -conf=(cells,DM,1) %allfilters2%  >  ./modulation-covid19-cells-results-pval-fdaonly-nopos/merge-filter-covid19-cells-2021-03-15-12.txt
drugranking.py  --mode=nofilter --fdadrugsonly=True  -conf=(cells,DM,2) -conf=(cells,DM,4)  %allfilters2%  >  ./modulation-covid19-cells-results-pval-fdaonly-nopos/merge-filter-covid19-cells-2021-03-15-13.txt
::drugranking.py  --mode=nofilter --fdadrugsonly=True  -conf=(cells,DM,3) %allfilters2%  >  ./modulation-covid19-cells-results-pval-fdaonly-nopos/merge-filter-covid19-cells-2021-03-15-15.txt
::drugranking.py  --mode=nofilter --fdadrugsonly=True  -conf=(cells,DM,4) %allfilters2%  >  ./modulation-covid19-cells-results-pval-fdaonly-nopos/merge-filter-covid19-cells-2021-03-15-15.txt
::drugranking.py  --mode=nofilter --fdadrugsonly=True  -conf=(cells,DM,5) %allfilters2%  >  ./modulation-covid19-cells-results-pval-fdaonly-nopos/merge-filter-covid19-cells-2021-03-15-16.txt

::ECHO GEO data nofilter
::drugranking.py  --mode=nofilter --fdadrugsonly=True  -conf=(cells,GEO,0) -conf=(cells,GEO,2) %allfilters3% >  ./modulation-covid19-cells-results-pval-fdaonly-nopos/merge-filter-covid19-cells-2021-03-15-21.txt
::drugranking.py  --mode=nofilter --fdadrugsonly=True  -conf=(cells,GEO,1) %allfilters3%>   ./modulation-covid19-cells-results-pval-fdaonly-nopos/merge-filter-covid19-cells-2021-03-15-22.txt
::drugranking.py  --mode=nofilter --fdadrugsonly=True  -conf=(cells,GEO,2) %allfilters3% >  ./modulation-covid19-cells-results-pval-fdaonly-nopos/merge-filter-covid19-cells-2021-03-15-23.txt
::drugranking.py  --mode=nofilter --fdadrugsonly=True  -conf=(cells,GEO,3) %allfilters3% >  ./modulation-covid19-cells-results-pval-fdaonly-nopos/merge-filter-covid19-cells-2021-03-15-24.txt
::drugranking.py  --mode=nofilter --fdadrugsonly=True  -conf=(cells,GEO,4) %allfilters3% >  ./modulation-covid19-cells-results-pval-fdaonly-nopos/merge-filter-covid19-cells-2021-03-15-25.txt

::ECHO DM data nofilter
::drugranking.py  --mode=nofilter --fdadrugsonly=True  -conf=(cells,DM,0) %allfilters4%  >  ./modulation-covid19-cells-results-pval-fdaonly-nopos/merge-filter-covid19-cells-2021-03-15-31.txt
::drugranking.py  --mode=nofilter --fdadrugsonly=True  -conf=(cells,DM,1) %allfilters4%  >  ./modulation-covid19-cells-results-pval-fdaonly-nopos/merge-filter-covid19-cells-2021-03-15-32.txt
::drugranking.py  --mode=nofilter --fdadrugsonly=True  -conf=(cells,DM,2) %allfilters4%  >  ./modulation-covid19-cells-results-pval-fdaonly-nopos/merge-filter-covid19-cells-2021-03-15-33.txt
::drugranking.py  --mode=nofilter --fdadrugsonly=True  -conf=(cells,DM,3) %allfilters4%  >  ./modulation-covid19-cells-results-pval-fdaonly-nopos/merge-filter-covid19-cells-2021-03-15-34.txt
::drugranking.py  --mode=nofilter --fdadrugsonly=True  -conf=(cells,DM,4) %allfilters4%  >  ./modulation-covid19-cells-results-pval-fdaonly-nopos/merge-filter-covid19-cells-2021-03-15-35.txt

::

ECHO CMAPupdown data filter
drugranking.py  --mode=nofilter --fdadrugsonly=True  -conf=(cells,CMAPupdown,0) -conf=(cells,CMAPupdown,1) %allfilters5%  >   ./modulation-covid19-cells-results-pval-fdaonly-nopos/merge-filter-covid19-cells-2021-03-15-41.txt
::drugranking.py  --mode=nofilter --fdadrugsonly=True  -conf=(cells,CMAPupdown,1) %allfilters5%  >   ./modulation-covid19-cells-results-pval-fdaonly-nopos/merge-filter-covid19-cells-2021-03-15-42.txt
::drugranking.py  --mode=nofilter --fdadrugsonly=True  -conf=(cells,CMAPupdown,2) %allfilters5%   >  ./modulation-covid19-cells-results-pval-fdaonly-nopos/merge-filter-covid19-cells-2021-03-15-43.txt
::drugranking.py  --mode=nofilter --fdadrugsonly=True  -conf=(cells,CMAPupdown,3) %allfilters5%   >  ./modulation-covid19-cells-results-pval-fdaonly-nopos/merge-filter-covid19-cells-2021-03-15-44.txt
::drugranking.py  --mode=nofilter --fdadrugsonly=True  -conf=(cells,CMAPupdown,4) %allfilters5%   >  ./modulation-covid19-cells-results-pval-fdaonly-nopos/merge-filter-covid19-cells-2021-03-15-45.txt
::drugranking.py  --mode=nofilter --fdadrugsonly=True  -conf=(cells,CMAPupdown,5) %allfilters5%   >  ./modulation-covid19-cells-results-pval-fdaonly-nopos/merge-filter-covid19-cells-2021-03-15-46.txt

ECHO L1000updown data filter
drugranking.py  --mode=nofilter --fdadrugsonly=True  -conf=(cells,L1000updown,0) -conf=(cells,L1000updown,2) %allfilters6%  >  ./modulation-covid19-cells-results-pval-fdaonly-nopos/merge-filter-covid19-cells-2021-03-15-51.txt
::drugranking.py  --mode=nofilter --fdadrugsonly=True  -conf=(cells,L1000updown,1) %allfilters6%  >  ./modulation-covid19-cells-results-pval-fdaonly-nopos/merge-filter-covid19-cells-2021-03-15-52.txt
::drugranking.py  --mode=nofilter --fdadrugsonly=True  -conf=(cells,L1000updown,2) %allfilters6%  >  ./modulation-covid19-cells-results-pval-fdaonly-nopos/merge-filter-covid19-cells-2021-03-15-53.txt
::drugranking.py  --mode=nofilter --fdadrugsonly=True  -conf=(cells,L1000updown,3) %allfilters6%  >  ./modulation-covid19-cells-results-pval-fdaonly-nopos/merge-filter-covid19-cells-2021-03-15-55.txt
::drugranking.py  --mode=nofilter --fdadrugsonly=True  -conf=(cells,L1000updown,4) %allfilters6%  >  ./modulation-covid19-cells-results-pval-fdaonly-nopos/merge-filter-covid19-cells-2021-03-15-55.txt
::drugranking.py  --mode=nofilter --fdadrugsonly=True  -conf=(cells,L1000updown,5) %allfilters6%  >  ./modulation-covid19-cells-results-pval-fdaonly-nopos/merge-filter-covid19-cells-2021-03-15-56.txt

::ECHO CMAPupdown data nofilter
::drugranking.py  --mode=nofilter --fdadrugsonly=True  -conf=(cells,CMAPupdown,0) %allfilters7% >  ./modulation-covid19-cells-results-pval-fdaonly-nopos/merge-filter-covid19-cells-2021-03-15-61.txt
::drugranking.py  --mode=nofilter --fdadrugsonly=True  -conf=(cells,CMAPupdown,1) %allfilters7%>   ./modulation-covid19-cells-results-pval-fdaonly-nopos/merge-filter-covid19-cells-2021-03-15-62.txt
::drugranking.py  --mode=nofilter --fdadrugsonly=True  -conf=(cells,CMAPupdown,2) %allfilters7% >  ./modulation-covid19-cells-results-pval-fdaonly-nopos/merge-filter-covid19-cells-2021-03-15-63.txt
::drugranking.py  --mode=nofilter --fdadrugsonly=True  -conf=(cells,CMAPupdown,3) %allfilters7% >  ./modulation-covid19-cells-results-pval-fdaonly-nopos/merge-filter-covid19-cells-2021-03-15-64.txt
::drugranking.py  --mode=nofilter --fdadrugsonly=True  -conf=(cells,CMAPupdown,4) %allfilters7% >  ./modulation-covid19-cells-results-pval-fdaonly-nopos/merge-filter-covid19-cells-2021-03-15-65.txt

::ECHO L1000updown data nofilter
::drugranking.py  --mode=nofilter --fdadrugsonly=True  -conf=(cells,L1000updown,0) %allfilters8%  >  ./modulation-covid19-cells-results-pval-fdaonly-nopos/merge-filter-covid19-cells-2021-03-15-71.txt
::drugranking.py  --mode=nofilter --fdadrugsonly=True  -conf=(cells,L1000updown,1) %allfilters8%  >  ./modulation-covid19-cells-results-pval-fdaonly-nopos/merge-filter-covid19-cells-2021-03-15-72.txt
::drugranking.py  --mode=nofilter --fdadrugsonly=True  -conf=(cells,L1000updown,2) %allfilters8%  >  ./modulation-covid19-cells-results-pval-fdaonly-nopos/merge-filter-covid19-cells-2021-03-15-73.txt
::drugranking.py  --mode=nofilter --fdadrugsonly=True  -conf=(cells,L1000updown,3) %allfilters8%  >  ./modulation-covid19-cells-results-pval-fdaonly-nopos/merge-filter-covid19-cells-2021-03-15-74.txt
::drugranking.py  --mode=nofilter --fdadrugsonly=True  -conf=(cells,L1000updown,4) %allfilters8%  >  ./modulation-covid19-cells-results-pval-fdaonly-nopos/merge-filter-covid19-cells-2021-03-15-75.txt
