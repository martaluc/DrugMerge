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
drugranking.py  --mode=nofilter --fdadrugsonly=True  -conf=(balf,GEO,0) %allfilters1%  >   ./modulation-covid19-balf-results-pval-fdaonly-nopos/test-filter-covid19-balf-2021-03-23-laptop-01.txt
drugranking.py  --mode=nofilter --fdadrugsonly=True  -conf=(balf,GEO,1) %allfilters1%  >   ./modulation-covid19-balf-results-pval-fdaonly-nopos/test-filter-covid19-balf-2021-03-23-laptop-02.txt
drugranking.py  --mode=nofilter --fdadrugsonly=True  -conf=(balf,GEO,2) %allfilters1%   >  ./modulation-covid19-balf-results-pval-fdaonly-nopos/test-filter-covid19-balf-2021-03-23-laptop-03.txt
drugranking.py  --mode=nofilter --fdadrugsonly=True  -conf=(balf,GEO,3) %allfilters1%   >  ./modulation-covid19-balf-results-pval-fdaonly-nopos/test-filter-covid19-balf-2021-03-23-laptop-04.txt
drugranking.py  --mode=nofilter --fdadrugsonly=True  -conf=(balf,GEO,4) %allfilters1%   >  ./modulation-covid19-balf-results-pval-fdaonly-nopos/test-filter-covid19-balf-2021-03-23-laptop-05.txt
drugranking.py  --mode=nofilter --fdadrugsonly=True  -conf=(balf,GEO,5) %allfilters1%   >  ./modulation-covid19-balf-results-pval-fdaonly-nopos/test-filter-covid19-balf-2021-03-23-laptop-06.txt
drugranking.py  --mode=nofilter --fdadrugsonly=True  -conf=(balf,GEO,6) %allfilters1%   >  ./modulation-covid19-balf-results-pval-fdaonly-nopos/test-filter-covid19-balf-2021-03-23-laptop-07.txt

ECHO DM data filter
drugranking.py  --mode=nofilter --fdadrugsonly=True  -conf=(balf,DM,0) %allfilters2%  >  ./modulation-covid19-balf-results-pval-fdaonly-nopos/test-filter-covid19-balf-2021-03-23-laptop-11.txt
drugranking.py  --mode=nofilter --fdadrugsonly=True  -conf=(balf,DM,1) %allfilters2%  >  ./modulation-covid19-balf-results-pval-fdaonly-nopos/test-filter-covid19-balf-2021-03-23-laptop-12.txt
drugranking.py  --mode=nofilter --fdadrugsonly=True  -conf=(balf,DM,2) %allfilters2%  >  ./modulation-covid19-balf-results-pval-fdaonly-nopos/test-filter-covid19-balf-2021-03-23-laptop-13.txt
drugranking.py  --mode=nofilter --fdadrugsonly=True  -conf=(balf,DM,3) %allfilters2%  >  ./modulation-covid19-balf-results-pval-fdaonly-nopos/test-filter-covid19-balf-2021-03-23-laptop-15.txt
drugranking.py  --mode=nofilter --fdadrugsonly=True  -conf=(balf,DM,4) %allfilters2%  >  ./modulation-covid19-balf-results-pval-fdaonly-nopos/test-filter-covid19-balf-2021-03-23-laptop-15.txt
drugranking.py  --mode=nofilter --fdadrugsonly=True  -conf=(balf,DM,5) %allfilters2%  >  ./modulation-covid19-balf-results-pval-fdaonly-nopos/test-filter-covid19-balf-2021-03-23-laptop-16.txt
drugranking.py  --mode=nofilter --fdadrugsonly=True  -conf=(balf,DM,6) %allfilters2%  >  ./modulation-covid19-balf-results-pval-fdaonly-nopos/test-filter-covid19-balf-2021-03-23-laptop-17.txt

::ECHO GEO data nofilter
::drugranking.py  --mode=nofilter --fdadrugsonly=True  -conf=(balf,GEO,0) %allfilters3% >  ./modulation-covid19-balf-results-pval-fdaonly-nopos/test-filter-covid19-balf-2021-03-23-laptop-21.txt
::drugranking.py  --mode=nofilter --fdadrugsonly=True  -conf=(balf,GEO,1) %allfilters3%>   ./modulation-covid19-balf-results-pval-fdaonly-nopos/test-filter-covid19-balf-2021-03-23-laptop-22.txt
::drugranking.py  --mode=nofilter --fdadrugsonly=True  -conf=(balf,GEO,2) %allfilters3% >  ./modulation-covid19-balf-results-pval-fdaonly-nopos/test-filter-covid19-balf-2021-03-23-laptop-23.txt
::drugranking.py  --mode=nofilter --fdadrugsonly=True  -conf=(balf,GEO,3) %allfilters3% >  ./modulation-covid19-balf-results-pval-fdaonly-nopos/test-filter-covid19-balf-2021-03-23-laptop-24.txt
::drugranking.py  --mode=nofilter --fdadrugsonly=True  -conf=(balf,GEO,4) %allfilters3% >  ./modulation-covid19-balf-results-pval-fdaonly-nopos/test-filter-covid19-balf-2021-03-23-laptop-25.txt

::ECHO DM data nofilter
::drugranking.py  --mode=nofilter --fdadrugsonly=True  -conf=(balf,DM,0) %allfilters4%  >  ./modulation-covid19-balf-results-pval-fdaonly-nopos/test-filter-covid19-balf-2021-03-23-laptop-31.txt
::drugranking.py  --mode=nofilter --fdadrugsonly=True  -conf=(balf,DM,1) %allfilters4%  >  ./modulation-covid19-balf-results-pval-fdaonly-nopos/test-filter-covid19-balf-2021-03-23-laptop-32.txt
::drugranking.py  --mode=nofilter --fdadrugsonly=True  -conf=(balf,DM,2) %allfilters4%  >  ./modulation-covid19-balf-results-pval-fdaonly-nopos/test-filter-covid19-balf-2021-03-23-laptop-33.txt
::drugranking.py  --mode=nofilter --fdadrugsonly=True  -conf=(balf,DM,3) %allfilters4%  >  ./modulation-covid19-balf-results-pval-fdaonly-nopos/test-filter-covid19-balf-2021-03-23-laptop-34.txt
::drugranking.py  --mode=nofilter --fdadrugsonly=True  -conf=(balf,DM,4) %allfilters4%  >  ./modulation-covid19-balf-results-pval-fdaonly-nopos/test-filter-covid19-balf-2021-03-23-laptop-35.txt

::

ECHO CMAPupdown data filter
drugranking.py  --mode=nofilter --fdadrugsonly=True  -conf=(balf,CMAPupdown,0) %allfilters5%  >   ./modulation-covid19-balf-results-pval-fdaonly-nopos/test-filter-covid19-balf-2021-03-23-laptop-41.txt
drugranking.py  --mode=nofilter --fdadrugsonly=True  -conf=(balf,CMAPupdown,1) %allfilters5%  >   ./modulation-covid19-balf-results-pval-fdaonly-nopos/test-filter-covid19-balf-2021-03-23-laptop-42.txt
drugranking.py  --mode=nofilter --fdadrugsonly=True  -conf=(balf,CMAPupdown,2) %allfilters5%   >  ./modulation-covid19-balf-results-pval-fdaonly-nopos/test-filter-covid19-balf-2021-03-23-laptop-43.txt
drugranking.py  --mode=nofilter --fdadrugsonly=True  -conf=(balf,CMAPupdown,3) %allfilters5%   >  ./modulation-covid19-balf-results-pval-fdaonly-nopos/test-filter-covid19-balf-2021-03-23-laptop-44.txt
drugranking.py  --mode=nofilter --fdadrugsonly=True  -conf=(balf,CMAPupdown,4) %allfilters5%   >  ./modulation-covid19-balf-results-pval-fdaonly-nopos/test-filter-covid19-balf-2021-03-23-laptop-45.txt
drugranking.py  --mode=nofilter --fdadrugsonly=True  -conf=(balf,CMAPupdown,5) %allfilters5%   >  ./modulation-covid19-balf-results-pval-fdaonly-nopos/test-filter-covid19-balf-2021-03-23-laptop-46.txt
drugranking.py  --mode=nofilter --fdadrugsonly=True  -conf=(balf,CMAPupdown,6) %allfilters5%   >  ./modulation-covid19-balf-results-pval-fdaonly-nopos/test-filter-covid19-balf-2021-03-23-laptop-47.txt

ECHO L1000updown data filter
drugranking.py  --mode=nofilter --fdadrugsonly=True  -conf=(balf,L1000updown,0) %allfilters6%  >  ./modulation-covid19-balf-results-pval-fdaonly-nopos/test-filter-covid19-balf-2021-03-23-laptop-51.txt
drugranking.py  --mode=nofilter --fdadrugsonly=True  -conf=(balf,L1000updown,1) %allfilters6%  >  ./modulation-covid19-balf-results-pval-fdaonly-nopos/test-filter-covid19-balf-2021-03-23-laptop-52.txt
drugranking.py  --mode=nofilter --fdadrugsonly=True  -conf=(balf,L1000updown,2) %allfilters6%  >  ./modulation-covid19-balf-results-pval-fdaonly-nopos/test-filter-covid19-balf-2021-03-23-laptop-53.txt
drugranking.py  --mode=nofilter --fdadrugsonly=True  -conf=(balf,L1000updown,3) %allfilters6%  >  ./modulation-covid19-balf-results-pval-fdaonly-nopos/test-filter-covid19-balf-2021-03-23-laptop-55.txt
drugranking.py  --mode=nofilter --fdadrugsonly=True  -conf=(balf,L1000updown,4) %allfilters6%  >  ./modulation-covid19-balf-results-pval-fdaonly-nopos/test-filter-covid19-balf-2021-03-23-laptop-55.txt
drugranking.py  --mode=nofilter --fdadrugsonly=True  -conf=(balf,L1000updown,5) %allfilters6%  >  ./modulation-covid19-balf-results-pval-fdaonly-nopos/test-filter-covid19-balf-2021-03-23-laptop-56.txt
drugranking.py  --mode=nofilter --fdadrugsonly=True  -conf=(balf,L1000updown,6) %allfilters6%  >  ./modulation-covid19-balf-results-pval-fdaonly-nopos/test-filter-covid19-balf-2021-03-23-laptop-57.txt

::ECHO CMAPupdown data nofilter
::drugranking.py  --mode=nofilter --fdadrugsonly=True  -conf=(balf,CMAPupdown,0) %allfilters7% >  ./modulation-covid19-balf-results-pval-fdaonly-nopos/test-filter-covid19-balf-2021-03-23-laptop-61.txt
::drugranking.py  --mode=nofilter --fdadrugsonly=True  -conf=(balf,CMAPupdown,1) %allfilters7%>   ./modulation-covid19-balf-results-pval-fdaonly-nopos/test-filter-covid19-balf-2021-03-23-laptop-62.txt
::drugranking.py  --mode=nofilter --fdadrugsonly=True  -conf=(balf,CMAPupdown,2) %allfilters7% >  ./modulation-covid19-balf-results-pval-fdaonly-nopos/test-filter-covid19-balf-2021-03-23-laptop-63.txt
::drugranking.py  --mode=nofilter --fdadrugsonly=True  -conf=(balf,CMAPupdown,3) %allfilters7% >  ./modulation-covid19-balf-results-pval-fdaonly-nopos/test-filter-covid19-balf-2021-03-23-laptop-64.txt
::drugranking.py  --mode=nofilter --fdadrugsonly=True  -conf=(balf,CMAPupdown,4) %allfilters7% >  ./modulation-covid19-balf-results-pval-fdaonly-nopos/test-filter-covid19-balf-2021-03-23-laptop-65.txt

::ECHO L1000updown data nofilter
::drugranking.py  --mode=nofilter --fdadrugsonly=True  -conf=(balf,L1000updown,0) %allfilters8%  >  ./modulation-covid19-balf-results-pval-fdaonly-nopos/test-filter-covid19-balf-2021-03-23-laptop-71.txt
::drugranking.py  --mode=nofilter --fdadrugsonly=True  -conf=(balf,L1000updown,1) %allfilters8%  >  ./modulation-covid19-balf-results-pval-fdaonly-nopos/test-filter-covid19-balf-2021-03-23-laptop-72.txt
::drugranking.py  --mode=nofilter --fdadrugsonly=True  -conf=(balf,L1000updown,2) %allfilters8%  >  ./modulation-covid19-balf-results-pval-fdaonly-nopos/test-filter-covid19-balf-2021-03-23-laptop-73.txt
::drugranking.py  --mode=nofilter --fdadrugsonly=True  -conf=(balf,L1000updown,3) %allfilters8%  >  ./modulation-covid19-balf-results-pval-fdaonly-nopos/test-filter-covid19-balf-2021-03-23-laptop-74.txt
::drugranking.py  --mode=nofilter --fdadrugsonly=True  -conf=(balf,L1000updown,4) %allfilters8%  >  ./modulation-covid19-balf-results-pval-fdaonly-nopos/test-filter-covid19-balf-2021-03-23-laptop-75.txt
