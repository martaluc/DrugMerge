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
drugranking.py  --mode=nofilter --fdadrugsonly=False  -conf=(crc,GEO,0) %allfilters1%  >   ./modulation-colorectal-cancer-results-pval-nofda-nopos/test-filter-crc-2021-04-10-laptop-01.txt
drugranking.py  --mode=nofilter --fdadrugsonly=False  -conf=(crc,GEO,1) %allfilters1%  >   ./modulation-colorectal-cancer-results-pval-nofda-nopos/test-filter-crc-2021-04-10-laptop-02.txt
drugranking.py  --mode=nofilter --fdadrugsonly=False  -conf=(crc,GEO,2) %allfilters1%   >  ./modulation-colorectal-cancer-results-pval-nofda-nopos/test-filter-crc-2021-04-10-laptop-03.txt
drugranking.py  --mode=nofilter --fdadrugsonly=False  -conf=(crc,GEO,3) %allfilters1%   >  ./modulation-colorectal-cancer-results-pval-nofda-nopos/test-filter-crc-2021-04-10-laptop-04.txt
drugranking.py  --mode=nofilter --fdadrugsonly=False  -conf=(crc,GEO,4) %allfilters1%   >  ./modulation-colorectal-cancer-results-pval-nofda-nopos/test-filter-crc-2021-04-10-laptop-05.txt
drugranking.py  --mode=nofilter --fdadrugsonly=False  -conf=(crc,GEO,5) %allfilters1%   >  ./modulation-colorectal-cancer-results-pval-nofda-nopos/test-filter-crc-2021-04-10-laptop-06.txt
drugranking.py  --mode=nofilter --fdadrugsonly=False  -conf=(crc,GEO,6) %allfilters1%   >  ./modulation-colorectal-cancer-results-pval-nofda-nopos/test-filter-crc-2021-04-10-laptop-07.txt

ECHO DM data filter
drugranking.py  --mode=nofilter --fdadrugsonly=False  -conf=(crc,DM,0) %allfilters2%  >  ./modulation-colorectal-cancer-results-pval-nofda-nopos/test-filter-crc-2021-04-10-laptop-11.txt
drugranking.py  --mode=nofilter --fdadrugsonly=False  -conf=(crc,DM,1) %allfilters2%  >  ./modulation-colorectal-cancer-results-pval-nofda-nopos/test-filter-crc-2021-04-10-laptop-12.txt
drugranking.py  --mode=nofilter --fdadrugsonly=False  -conf=(crc,DM,2) %allfilters2%  >  ./modulation-colorectal-cancer-results-pval-nofda-nopos/test-filter-crc-2021-04-10-laptop-13.txt
drugranking.py  --mode=nofilter --fdadrugsonly=False  -conf=(crc,DM,3) %allfilters2%  >  ./modulation-colorectal-cancer-results-pval-nofda-nopos/test-filter-crc-2021-04-10-laptop-15.txt
drugranking.py  --mode=nofilter --fdadrugsonly=False  -conf=(crc,DM,4) %allfilters2%  >  ./modulation-colorectal-cancer-results-pval-nofda-nopos/test-filter-crc-2021-04-10-laptop-15.txt
drugranking.py  --mode=nofilter --fdadrugsonly=False  -conf=(crc,DM,5) %allfilters2%  >  ./modulation-colorectal-cancer-results-pval-nofda-nopos/test-filter-crc-2021-04-10-laptop-16.txt
drugranking.py  --mode=nofilter --fdadrugsonly=False  -conf=(crc,DM,6) %allfilters2%  >  ./modulation-colorectal-cancer-results-pval-nofda-nopos/test-filter-crc-2021-04-10-laptop-17.txt

::ECHO GEO data nofilter
::drugranking.py  --mode=nofilter --fdadrugsonly=False  -conf=(crc,GEO,0) %allfilters3% >  ./modulation-colorectal-cancer-results-pval-nofda-nopos/test-filter-crc-2021-04-10-laptop-21.txt
::drugranking.py  --mode=nofilter --fdadrugsonly=False  -conf=(crc,GEO,1) %allfilters3%>   ./modulation-colorectal-cancer-results-pval-nofda-nopos/test-filter-crc-2021-04-10-laptop-22.txt
::drugranking.py  --mode=nofilter --fdadrugsonly=False  -conf=(crc,GEO,2) %allfilters3% >  ./modulation-colorectal-cancer-results-pval-nofda-nopos/test-filter-crc-2021-04-10-laptop-23.txt
::drugranking.py  --mode=nofilter --fdadrugsonly=False  -conf=(crc,GEO,3) %allfilters3% >  ./modulation-colorectal-cancer-results-pval-nofda-nopos/test-filter-crc-2021-04-10-laptop-24.txt
::drugranking.py  --mode=nofilter --fdadrugsonly=False  -conf=(crc,GEO,4) %allfilters3% >  ./modulation-colorectal-cancer-results-pval-nofda-nopos/test-filter-crc-2021-04-10-laptop-25.txt

::ECHO DM data nofilter
::drugranking.py  --mode=nofilter --fdadrugsonly=False  -conf=(crc,DM,0) %allfilters4%  >  ./modulation-colorectal-cancer-results-pval-nofda-nopos/test-filter-crc-2021-04-10-laptop-31.txt
::drugranking.py  --mode=nofilter --fdadrugsonly=False  -conf=(crc,DM,1) %allfilters4%  >  ./modulation-colorectal-cancer-results-pval-nofda-nopos/test-filter-crc-2021-04-10-laptop-32.txt
::drugranking.py  --mode=nofilter --fdadrugsonly=False  -conf=(crc,DM,2) %allfilters4%  >  ./modulation-colorectal-cancer-results-pval-nofda-nopos/test-filter-crc-2021-04-10-laptop-33.txt
::drugranking.py  --mode=nofilter --fdadrugsonly=False  -conf=(crc,DM,3) %allfilters4%  >  ./modulation-colorectal-cancer-results-pval-nofda-nopos/test-filter-crc-2021-04-10-laptop-34.txt
::drugranking.py  --mode=nofilter --fdadrugsonly=False  -conf=(crc,DM,4) %allfilters4%  >  ./modulation-colorectal-cancer-results-pval-nofda-nopos/test-filter-crc-2021-04-10-laptop-35.txt

::

ECHO CMAPupdown data filter
drugranking.py  --mode=nofilter --fdadrugsonly=False  -conf=(crc,CMAPupdown,0) %allfilters5%  >   ./modulation-colorectal-cancer-results-pval-nofda-nopos/test-filter-crc-2021-04-10-laptop-41.txt
drugranking.py  --mode=nofilter --fdadrugsonly=False  -conf=(crc,CMAPupdown,1) %allfilters5%  >   ./modulation-colorectal-cancer-results-pval-nofda-nopos/test-filter-crc-2021-04-10-laptop-42.txt
drugranking.py  --mode=nofilter --fdadrugsonly=False  -conf=(crc,CMAPupdown,2) %allfilters5%   >  ./modulation-colorectal-cancer-results-pval-nofda-nopos/test-filter-crc-2021-04-10-laptop-43.txt
drugranking.py  --mode=nofilter --fdadrugsonly=False  -conf=(crc,CMAPupdown,3) %allfilters5%   >  ./modulation-colorectal-cancer-results-pval-nofda-nopos/test-filter-crc-2021-04-10-laptop-44.txt
drugranking.py  --mode=nofilter --fdadrugsonly=False  -conf=(crc,CMAPupdown,4) %allfilters5%   >  ./modulation-colorectal-cancer-results-pval-nofda-nopos/test-filter-crc-2021-04-10-laptop-45.txt
drugranking.py  --mode=nofilter --fdadrugsonly=False  -conf=(crc,CMAPupdown,5) %allfilters5%   >  ./modulation-colorectal-cancer-results-pval-nofda-nopos/test-filter-crc-2021-04-10-laptop-46.txt
drugranking.py  --mode=nofilter --fdadrugsonly=False  -conf=(crc,CMAPupdown,6) %allfilters5%   >  ./modulation-colorectal-cancer-results-pval-nofda-nopos/test-filter-crc-2021-04-10-laptop-47.txt

ECHO L1000updown data filter
drugranking.py  --mode=nofilter --fdadrugsonly=False  -conf=(crc,L1000updown,0) %allfilters6%  >  ./modulation-colorectal-cancer-results-pval-nofda-nopos/test-filter-crc-2021-04-10-laptop-51.txt
drugranking.py  --mode=nofilter --fdadrugsonly=False  -conf=(crc,L1000updown,1) %allfilters6%  >  ./modulation-colorectal-cancer-results-pval-nofda-nopos/test-filter-crc-2021-04-10-laptop-52.txt
drugranking.py  --mode=nofilter --fdadrugsonly=False  -conf=(crc,L1000updown,2) %allfilters6%  >  ./modulation-colorectal-cancer-results-pval-nofda-nopos/test-filter-crc-2021-04-10-laptop-53.txt
drugranking.py  --mode=nofilter --fdadrugsonly=False  -conf=(crc,L1000updown,3) %allfilters6%  >  ./modulation-colorectal-cancer-results-pval-nofda-nopos/test-filter-crc-2021-04-10-laptop-55.txt
drugranking.py  --mode=nofilter --fdadrugsonly=False  -conf=(crc,L1000updown,4) %allfilters6%  >  ./modulation-colorectal-cancer-results-pval-nofda-nopos/test-filter-crc-2021-04-10-laptop-55.txt
drugranking.py  --mode=nofilter --fdadrugsonly=False  -conf=(crc,L1000updown,5) %allfilters6%  >  ./modulation-colorectal-cancer-results-pval-nofda-nopos/test-filter-crc-2021-04-10-laptop-56.txt
drugranking.py  --mode=nofilter --fdadrugsonly=False  -conf=(crc,L1000updown,6) %allfilters6%  >  ./modulation-colorectal-cancer-results-pval-nofda-nopos/test-filter-crc-2021-04-10-laptop-57.txt

::ECHO CMAPupdown data nofilter
::drugranking.py  --mode=nofilter --fdadrugsonly=False  -conf=(crc,CMAPupdown,0) %allfilters7% >  ./modulation-colorectal-cancer-results-pval-nofda-nopos/test-filter-crc-2021-04-10-laptop-61.txt
::drugranking.py  --mode=nofilter --fdadrugsonly=False  -conf=(crc,CMAPupdown,1) %allfilters7%>   ./modulation-colorectal-cancer-results-pval-nofda-nopos/test-filter-crc-2021-04-10-laptop-62.txt
::drugranking.py  --mode=nofilter --fdadrugsonly=False  -conf=(crc,CMAPupdown,2) %allfilters7% >  ./modulation-colorectal-cancer-results-pval-nofda-nopos/test-filter-crc-2021-04-10-laptop-63.txt
::drugranking.py  --mode=nofilter --fdadrugsonly=False  -conf=(crc,CMAPupdown,3) %allfilters7% >  ./modulation-colorectal-cancer-results-pval-nofda-nopos/test-filter-crc-2021-04-10-laptop-64.txt
::drugranking.py  --mode=nofilter --fdadrugsonly=False  -conf=(crc,CMAPupdown,4) %allfilters7% >  ./modulation-colorectal-cancer-results-pval-nofda-nopos/test-filter-crc-2021-04-10-laptop-65.txt

::ECHO L1000updown data nofilter
::drugranking.py  --mode=nofilter --fdadrugsonly=False  -conf=(crc,L1000updown,0) %allfilters8%  >  ./modulation-colorectal-cancer-results-pval-nofda-nopos/test-filter-crc-2021-04-10-laptop-71.txt
::drugranking.py  --mode=nofilter --fdadrugsonly=False  -conf=(crc,L1000updown,1) %allfilters8%  >  ./modulation-colorectal-cancer-results-pval-nofda-nopos/test-filter-crc-2021-04-10-laptop-72.txt
::drugranking.py  --mode=nofilter --fdadrugsonly=False  -conf=(crc,L1000updown,2) %allfilters8%  >  ./modulation-colorectal-cancer-results-pval-nofda-nopos/test-filter-crc-2021-04-10-laptop-73.txt
::drugranking.py  --mode=nofilter --fdadrugsonly=False  -conf=(crc,L1000updown,3) %allfilters8%  >  ./modulation-colorectal-cancer-results-pval-nofda-nopos/test-filter-crc-2021-04-10-laptop-74.txt
::drugranking.py  --mode=nofilter --fdadrugsonly=False  -conf=(crc,L1000updown,4) %allfilters8%  >  ./modulation-colorectal-cancer-results-pval-nofda-nopos/test-filter-crc-2021-04-10-laptop-75.txt
