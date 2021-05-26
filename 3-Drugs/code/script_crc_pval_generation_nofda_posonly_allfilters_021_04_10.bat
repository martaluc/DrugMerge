@ECHO OFF
ECHO  generation of ranking by pvalue with positive filtering

SET allfilters1=-filter=(crc,MD,GEO,filter,deltadeg) -filter=(crc,MD,GEO,filter,size_x_deltadeg)  -filter=(crc,cpd05j08,GEO,filter,deltadeg) -filter=(crc,cpd05j08,GEO,filter,size_x_deltadeg) -filter=(crc,cpd07j08,GEO,filter,deltadeg) -filter=(crc,cpd07j08,GEO,filter,size_x_deltadeg)
SET allfilters2=-filter=(crc,MD,DM,filter,deltadeg) -filter=(crc,MD,DM,filter,size_x_deltadeg)  -filter=(crc,cpd05j08,DM,filter,deltadeg) -filter=(crc,cpd05j08,DM,filter,size_x_deltadeg) -filter=(crc,cpd07j08,DM,filter,deltadeg) -filter=(crc,cpd07j08,DM,filter,size_x_deltadeg)
SET allfilters3=-filter=(crc,MD,GEO,nofilter,deltadeg) -filter=(crc,MD,GEO,nofilter,size_x_deltadeg)  -filter=(crc,cpd05j08,GEO,nofilter,deltadeg) -filter=(crc,cpd05j08,GEO,nofilter,size_x_deltadeg) -filter=(crc,cpd07j08,GEO,nofilter,deltadeg) -filter=(crc,cpd07j08,GEO,nofilter,size_x_deltadeg)
SET allfilters4=-filter=(crc,MD,DM,nofilter,deltadeg) -filter=(crc,MD,DM,nofilter,size_x_deltadeg)  -filter=(crc,cpd05j08,DM,nofilter,deltadeg) -filter=(crc,cpd05j08,DM,nofilter,size_x_deltadeg) -filter=(crc,cpd07j08,DM,nofilter,deltadeg) -filter=(crc,cpd07j08,DM,nofilter,size_x_deltadeg)
SET allfilters5=-filter=(crc,MD,CMAP,filter,deltadeg) -filter=(crc,MD,CMAP,filter,size_x_deltadeg)  -filter=(crc,cpd05j08,CMAP,filter,deltadeg) -filter=(crc,cpd05j08,CMAP,filter,size_x_deltadeg) -filter=(crc,cpd07j08,CMAP,filter,deltadeg) -filter=(crc,cpd07j08,CMAP,filter,size_x_deltadeg)
SET allfilters6=-filter=(crc,MD,L1000,filter,deltadeg) -filter=(crc,MD,L1000,filter,size_x_deltadeg)  -filter=(crc,cpd05j08,L1000,filter,deltadeg) -filter=(crc,cpd05j08,L1000,filter,size_x_deltadeg) -filter=(crc,cpd07j08,L1000,filter,deltadeg) -filter=(crc,cpd07j08,L1000,filter,size_x_deltadeg)
SET allfilters7=-filter=(crc,MD,CMAP,nofilter,deltadeg) -filter=(crc,MD,CMAP,nofilter,size_x_deltadeg)  -filter=(crc,cpd05j08,CMAP,nofilter,deltadeg) -filter=(crc,cpd05j08,CMAP,nofilter,size_x_deltadeg) -filter=(crc,cpd07j08,CMAP,nofilter,deltadeg) -filter=(crc,cpd07j08,CMAP,nofilter,size_x_deltadeg)
SET allfilters8=-filter=(crc,MD,L1000,nofilter,deltadeg) -filter=(crc,MD,L1000,nofilter,size_x_deltadeg)  -filter=(crc,cpd05j08,L1000,nofilter,deltadeg) -filter=(crc,cpd05j08,L1000,nofilter,size_x_deltadeg) -filter=(crc,cpd07j08,L1000,nofilter,deltadeg) -filter=(crc,cpd07j08,L1000,nofilter,size_x_deltadeg)

SET allfilters=%allfilters1% %allfilters2% %allfilters3% %allfilters4% %allfilters5% %allfilters6% %allfilters7% %allfilters8%

ECHO GEO data filter
drugranking.py  --mode=filteronly --fdadrugsonly=False  -conf=(crc,GEO,0) %allfilters%  >   ./modulation-colorectal-cancer-results-pval-nofda-allposonly/test-filter-crc-2021-04-10-laptop-01.txt
drugranking.py  --mode=filteronly --fdadrugsonly=False  -conf=(crc,GEO,1) %allfilters%  >   ./modulation-colorectal-cancer-results-pval-nofda-allposonly/test-filter-crc-2021-04-10-laptop-02.txt
drugranking.py  --mode=filteronly --fdadrugsonly=False  -conf=(crc,GEO,2) %allfilters%   >  ./modulation-colorectal-cancer-results-pval-nofda-allposonly/test-filter-crc-2021-04-10-laptop-03.txt
drugranking.py  --mode=filteronly --fdadrugsonly=False  -conf=(crc,GEO,3) %allfilters%   >  ./modulation-colorectal-cancer-results-pval-nofda-allposonly/test-filter-crc-2021-04-10-laptop-04.txt
drugranking.py  --mode=filteronly --fdadrugsonly=False  -conf=(crc,GEO,4) %allfilters%   >  ./modulation-colorectal-cancer-results-pval-nofda-allposonly/test-filter-crc-2021-04-10-laptop-05.txt
drugranking.py  --mode=filteronly --fdadrugsonly=False  -conf=(crc,GEO,5) %allfilters%   >  ./modulation-colorectal-cancer-results-pval-nofda-allposonly/test-filter-crc-2021-04-10-laptop-06.txt
drugranking.py  --mode=filteronly --fdadrugsonly=False  -conf=(crc,GEO,6) %allfilters%   >  ./modulation-colorectal-cancer-results-pval-nofda-allposonly/test-filter-crc-2021-04-10-laptop-07.txt


ECHO DM data filter
drugranking.py  --mode=filteronly --fdadrugsonly=False  -conf=(crc,DM,0) %allfilters%  >  ./modulation-colorectal-cancer-results-pval-nofda-allposonly/test-filter-crc-2021-04-10-laptop-11.txt
drugranking.py  --mode=filteronly --fdadrugsonly=False  -conf=(crc,DM,1) %allfilters%  >  ./modulation-colorectal-cancer-results-pval-nofda-allposonly/test-filter-crc-2021-04-10-laptop-12.txt
drugranking.py  --mode=filteronly --fdadrugsonly=False  -conf=(crc,DM,2) %allfilters%  >  ./modulation-colorectal-cancer-results-pval-nofda-allposonly/test-filter-crc-2021-04-10-laptop-13.txt
drugranking.py  --mode=filteronly --fdadrugsonly=False  -conf=(crc,DM,3) %allfilters%  >  ./modulation-colorectal-cancer-results-pval-nofda-allposonly/test-filter-crc-2021-04-10-laptop-14.txt
drugranking.py  --mode=filteronly --fdadrugsonly=False  -conf=(crc,DM,4) %allfilters%  >  ./modulation-colorectal-cancer-results-pval-nofda-allposonly/test-filter-crc-2021-04-10-laptop-15.txt
drugranking.py  --mode=filteronly --fdadrugsonly=False  -conf=(crc,DM,5) %allfilters%  >  ./modulation-colorectal-cancer-results-pval-nofda-allposonly/test-filter-crc-2021-04-10-laptop-16.txt
drugranking.py  --mode=filteronly --fdadrugsonly=False  -conf=(crc,DM,6) %allfilters%  >  ./modulation-colorectal-cancer-results-pval-nofda-allposonly/test-filter-crc-2021-04-10-laptop-17.txt

::ECHO GEO data nofilter
::drugranking.py  --mode=filteronly --fdadrugsonly=False  -conf=(crc,GEO,0) %allfilters% >  ./modulation-colorectal-cancer-results-pval-nofda-allposonly/test-filter-crc-2021-04-10-laptop-21.txt
::drugranking.py  --mode=filteronly --fdadrugsonly=False  -conf=(crc,GEO,1) %allfilters%>   ./modulation-colorectal-cancer-results-pval-nofda-allposonly/test-filter-crc-2021-04-10-laptop-22.txt
::drugranking.py  --mode=filteronly --fdadrugsonly=False  -conf=(crc,GEO,2) %allfilters% >  ./modulation-colorectal-cancer-results-pval-nofda-allposonly/test-filter-crc-2021-04-10-laptop-23.txt
::drugranking.py  --mode=filteronly --fdadrugsonly=False  -conf=(crc,GEO,3) %allfilters% >  ./modulation-colorectal-cancer-results-pval-nofda-allposonly/test-filter-crc-2021-04-10-laptop-24.txt
::drugranking.py  --mode=filteronly --fdadrugsonly=False  -conf=(crc,GEO,4) %allfilters% >  ./modulation-colorectal-cancer-results-pval-nofda-allposonly/test-filter-crc-2021-04-10-laptop-25.txt
::drugranking.py  --mode=filteronly --fdadrugsonly=False  -conf=(crc,GEO,5) %allfilters% >  ./modulation-colorectal-cancer-results-pval-nofda-allposonly/test-filter-crc-2021-04-10-laptop-26.txt

::ECHO DM data nofilter
::drugranking.py  --mode=filteronly --fdadrugsonly=False  -conf=(crc,DM,0) %allfilters%  >  ./modulation-colorectal-cancer-results-pval-nofda-allposonly/test-filter-crc-2021-04-10-laptop-31.txt
::drugranking.py  --mode=filteronly --fdadrugsonly=False  -conf=(crc,DM,1) %allfilters%  >  ./modulation-colorectal-cancer-results-pval-nofda-allposonly/test-filter-crc-2021-04-10-laptop-32.txt
::drugranking.py  --mode=filteronly --fdadrugsonly=False  -conf=(crc,DM,2) %allfilters%  >  ./modulation-colorectal-cancer-results-pval-nofda-allposonly/test-filter-crc-2021-04-10-laptop-33.txt
::drugranking.py  --mode=filteronly --fdadrugsonly=False  -conf=(crc,DM,3) %allfilters%  >  ./modulation-colorectal-cancer-results-pval-nofda-allposonly/test-filter-crc-2021-04-10-laptop-34.txt
::drugranking.py  --mode=filteronly --fdadrugsonly=False  -conf=(crc,DM,4) %allfilters%  >  ./modulation-colorectal-cancer-results-pval-nofda-allposonly/test-filter-crc-2021-04-10-laptop-35.txt
::drugranking.py  --mode=filteronly --fdadrugsonly=False  -conf=(crc,DM,5) %allfilters%  >  ./modulation-colorectal-cancer-results-pval-nofda-allposonly/test-filter-crc-2021-04-10-laptop-36.txt

::

ECHO CMAPupdown data filter
drugranking.py  --mode=filteronly --fdadrugsonly=False  -conf=(crc,CMAPupdown,0) %allfilters%  >   ./modulation-colorectal-cancer-results-pval-nofda-allposonly/test-filter-crc-2021-04-10-laptop-41.txt
drugranking.py  --mode=filteronly --fdadrugsonly=False  -conf=(crc,CMAPupdown,1) %allfilters%  >   ./modulation-colorectal-cancer-results-pval-nofda-allposonly/test-filter-crc-2021-04-10-laptop-42.txt
drugranking.py  --mode=filteronly --fdadrugsonly=False  -conf=(crc,CMAPupdown,2) %allfilters%   >  ./modulation-colorectal-cancer-results-pval-nofda-allposonly/test-filter-crc-2021-04-10-laptop-43.txt
drugranking.py  --mode=filteronly --fdadrugsonly=False  -conf=(crc,CMAPupdown,3) %allfilters%   >  ./modulation-colorectal-cancer-results-pval-nofda-allposonly/test-filter-crc-2021-04-10-laptop-44.txt
drugranking.py  --mode=filteronly --fdadrugsonly=False  -conf=(crc,CMAPupdown,4) %allfilters%   >  ./modulation-colorectal-cancer-results-pval-nofda-allposonly/test-filter-crc-2021-04-10-laptop-45.txt
drugranking.py  --mode=filteronly --fdadrugsonly=False  -conf=(crc,CMAPupdown,5) %allfilters%   >  ./modulation-colorectal-cancer-results-pval-nofda-allposonly/test-filter-crc-2021-04-10-laptop-46.txt
drugranking.py  --mode=filteronly --fdadrugsonly=False  -conf=(crc,CMAPupdown,6) %allfilters%   >  ./modulation-colorectal-cancer-results-pval-nofda-allposonly/test-filter-crc-2021-04-10-laptop-47.txt

ECHO L1000updown data filter
drugranking.py  --mode=filteronly --fdadrugsonly=False  -conf=(crc,L1000updown,0) %allfilters%  >  ./modulation-colorectal-cancer-results-pval-nofda-allposonly/test-filter-crc-2021-04-10-laptop-51.txt
drugranking.py  --mode=filteronly --fdadrugsonly=False  -conf=(crc,L1000updown,1) %allfilters%  >  ./modulation-colorectal-cancer-results-pval-nofda-allposonly/test-filter-crc-2021-04-10-laptop-52.txt
drugranking.py  --mode=filteronly --fdadrugsonly=False  -conf=(crc,L1000updown,2) %allfilters%  >  ./modulation-colorectal-cancer-results-pval-nofda-allposonly/test-filter-crc-2021-04-10-laptop-53.txt
drugranking.py  --mode=filteronly --fdadrugsonly=False  -conf=(crc,L1000updown,3) %allfilters%  >  ./modulation-colorectal-cancer-results-pval-nofda-allposonly/test-filter-crc-2021-04-10-laptop-54.txt
drugranking.py  --mode=filteronly --fdadrugsonly=False  -conf=(crc,L1000updown,4) %allfilters%  >  ./modulation-colorectal-cancer-results-pval-nofda-allposonly/test-filter-crc-2021-04-10-laptop-55.txt
drugranking.py  --mode=filteronly --fdadrugsonly=False  -conf=(crc,L1000updown,5) %allfilters%  >  ./modulation-colorectal-cancer-results-pval-nofda-allposonly/test-filter-crc-2021-04-10-laptop-56.txt
drugranking.py  --mode=filteronly --fdadrugsonly=False  -conf=(crc,L1000updown,6) %allfilters%  >  ./modulation-colorectal-cancer-results-pval-nofda-allposonly/test-filter-crc-2021-04-10-laptop-57.txt

::ECHO CMAPupdown data nofilter
::drugranking.py  --mode=filteronly --fdadrugsonly=False  -conf=(crc,CMAPupdown,0) %allfilters% >  ./modulation-colorectal-cancer-results-pval-nofda-allposonly/test-filter-crc-2021-04-10-laptop-61.txt
::drugranking.py  --mode=filteronly --fdadrugsonly=False  -conf=(crc,CMAPupdown,1) %allfilters%>   ./modulation-colorectal-cancer-results-pval-nofda-allposonly/test-filter-crc-2021-04-10-laptop-62.txt
::drugranking.py  --mode=filteronly --fdadrugsonly=False  -conf=(crc,CMAPupdown,2) %allfilters% >  ./modulation-colorectal-cancer-results-pval-nofda-allposonly/test-filter-crc-2021-04-10-laptop-63.txt
::drugranking.py  --mode=filteronly --fdadrugsonly=False  -conf=(crc,CMAPupdown,3) %allfilters% >  ./modulation-colorectal-cancer-results-pval-nofda-allposonly/test-filter-crc-2021-04-10-laptop-64.txt
::drugranking.py  --mode=filteronly --fdadrugsonly=False  -conf=(crc,CMAPupdown,4) %allfilters% >  ./modulation-colorectal-cancer-results-pval-nofda-allposonly/test-filter-crc-2021-04-10-laptop-65.txt
::drugranking.py  --mode=filteronly --fdadrugsonly=False  -conf=(crc,CMAPupdown,5) %allfilters% >  ./modulation-colorectal-cancer-results-pval-nofda-allposonly/test-filter-crc-2021-04-10-laptop-66.txt

::ECHO L1000updown data nofilter
::drugranking.py  --mode=filteronly --fdadrugsonly=False  -conf=(crc,L1000updown,0) %allfilters%  >  ./modulation-colorectal-cancer-results-pval-nofda-allposonly/test-filter-crc-2021-04-10-laptop-71.txt
::drugranking.py  --mode=filteronly --fdadrugsonly=False  -conf=(crc,L1000updown,1) %allfilters%  >  ./modulation-colorectal-cancer-results-pval-nofda-allposonly/test-filter-crc-2021-04-10-laptop-72.txt
::drugranking.py  --mode=filteronly --fdadrugsonly=False  -conf=(crc,L1000updown,2) %allfilters%  >  ./modulation-colorectal-cancer-results-pval-nofda-allposonly/test-filter-crc-2021-04-10-laptop-73.txt
::drugranking.py  --mode=filteronly --fdadrugsonly=False  -conf=(crc,L1000updown,3) %allfilters%  >  ./modulation-colorectal-cancer-results-pval-nofda-allposonly/test-filter-crc-2021-04-10-laptop-74.txt
::drugranking.py  --mode=filteronly --fdadrugsonly=False  -conf=(crc,L1000updown,4) %allfilters%  >  ./modulation-colorectal-cancer-results-pval-nofda-allposonly/test-filter-crc-2021-04-10-laptop-75.txt
::drugranking.py  --mode=filteronly --fdadrugsonly=False  -conf=(crc,L1000updown,5) %allfilters%  >  ./modulation-colorectal-cancer-results-pval-nofda-allposonly/test-filter-crc-2021-04-10-laptop-76.txt
