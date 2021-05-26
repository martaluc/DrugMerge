@ECHO OFF
ECHO  generation of ranking by pvalue with positive filtering

::SET allfilters1=-filter=(prc,MD,GEO,filter,deltadeg) -filter=(prc,MD,GEO,filter,size_x_deltadeg)   -filter=(prc,cpd07j08,GEO,filter,deltadeg) -filter=(prc,cpd07j08,GEO,filter,size_x_deltadeg)
::SET allfilters2=-filter=(prc,cpd07j06,DM,filter,deltadeg) -filter=(prc,cpd07j06,DM,filter,size_x_deltadeg) -filter=(prc,cpd05j08,DM,filter,deltadeg) -filter=(prc,cpd05j08,DM,filter,size_x_deltadeg)
::SET allfilters3=-filter=(prc,MD,GEO,nofilter,deltadeg) -filter=(prc,MD,GEO,nofilter,size_x_deltadeg)    -filter=(prc,cpd07j08,GEO,nofilter,deltadeg) -filter=(prc,cpd07j08,GEO,nofilter,size_x_deltadeg)
::SET allfilters4=-filter=(prc,cpd07j06,DM,nofilter,deltadeg) -filter=(prc,cpd07j06,DM,nofilter,size_x_deltadeg) -filter=(prc,cpd05j08,DM,nofilter,deltadeg) -filter=(prc,cpd05j08,DM,nofilter,size_x_deltadeg)
::SET allfilters5=-filter=(prc,MD,CMAP,filter,deltadeg) -filter=(prc,MD,CMAP,filter,size_x_deltadeg)   -filter=(prc,cpd07j08,CMAP,filter,deltadeg) -filter=(prc,cpd07j08,CMAP,filter,size_x_deltadeg)
::SET allfilters6=-filter=(prc,MD,L1000,filter,deltadeg) -filter=(prc,MD,L1000,filter,size_x_deltadeg)    -filter=(prc,cpd07j08,L1000,filter,deltadeg) -filter=(prc,cpd07j08,L1000,filter,size_x_deltadeg)
::SET allfilters7=-filter=(prc,MD,CMAP,nofilter,deltadeg) -filter=(prc,MD,CMAP,nofilter,size_x_deltadeg)   -filter=(prc,cpd07j08,CMAP,nofilter,deltadeg) -filter=(prc,cpd07j08,CMAP,nofilter,size_x_deltadeg)
::SET allfilters8=-filter=(prc,MD,L1000,nofilter,deltadeg) -filter=(prc,MD,L1000,nofilter,size_x_deltadeg)    -filter=(prc,cpd07j08,L1000,nofilter,deltadeg) -filter=(prc,cpd07j08,L1000,nofilter,size_x_deltadeg)

SET allfilters1=
SET allfilters2=
SET allfilters3=
SET allfilters4=
SET allfilters5=
SET allfilters6=
SET allfilters7=
SET allfilters8=

SET allfilters=%allfilters1% %allfilters2% %allfilters3% %allfilters4% %allfilters5% %allfilters6% %allfilters7% %allfilters8%

ECHO GEO data filter
drugranking.py  --mode=nofilter --fdadrugsonly=True  -conf=(prc,GEO,0) %allfilters%  >   ./modulation-prostate-cancer-results-pval-fdaonly-nopos/test-filter-prc-2021-03-14-laptop-01.txt
drugranking.py  --mode=nofilter --fdadrugsonly=True  -conf=(prc,GEO,1) %allfilters%  >   ./modulation-prostate-cancer-results-pval-fdaonly-nopos/test-filter-prc-2021-03-14-laptop-02.txt
drugranking.py  --mode=nofilter --fdadrugsonly=True  -conf=(prc,GEO,2) %allfilters%   >  ./modulation-prostate-cancer-results-pval-fdaonly-nopos/test-filter-prc-2021-03-14-laptop-03.txt
drugranking.py  --mode=nofilter --fdadrugsonly=True  -conf=(prc,GEO,3) %allfilters%   >  ./modulation-prostate-cancer-results-pval-fdaonly-nopos/test-filter-prc-2021-03-14-laptop-04.txt

::drugranking.py  --mode=nofilter --fdadrugsonly=True  -conf=(prc,GEO,4) %allfilters%   >  ./modulation-prostate-cancer-results-pval-fdaonly-nopos/test-filter-prc-2021-03-14-laptop-05.txt
::drugranking.py  --mode=nofilter --fdadrugsonly=True  -conf=(prc,GEO,5) %allfilters%   >  ./modulation-prostate-cancer-results-pval-fdaonly-nopos/test-filter-prc-2021-03-14-laptop-06.txt
::drugranking.py  --mode=nofilter --fdadrugsonly=True  -conf=(prc,GEO,6) %allfilters%   >  ./modulation-prostate-cancer-results-pval-fdaonly-nopos/test-filter-prc-2021-03-14-laptop-07.txt


ECHO DM data filter
drugranking.py  --mode=nofilter --fdadrugsonly=True  -conf=(prc,DM,0) %allfilters%  >  ./modulation-prostate-cancer-results-pval-fdaonly-nopos/test-filter-prc-2021-03-14-laptop-11.txt

::drugranking.py  --mode=nofilter --fdadrugsonly=True  -conf=(prc,DM,1) %allfilters%  >  ./modulation-prostate-cancer-results-pval-fdaonly-nopos/test-filter-prc-2021-03-14-laptop-12.txt
::drugranking.py  --mode=nofilter --fdadrugsonly=True  -conf=(prc,DM,2) %allfilters%  >  ./modulation-prostate-cancer-results-pval-fdaonly-nopos/test-filter-prc-2021-03-14-laptop-13.txt
::drugranking.py  --mode=nofilter --fdadrugsonly=True  -conf=(prc,DM,3) %allfilters%  >  ./modulation-prostate-cancer-results-pval-fdaonly-nopos/test-filter-prc-2021-03-14-laptop-14.txt
::drugranking.py  --mode=nofilter --fdadrugsonly=True  -conf=(prc,DM,4) %allfilters%  >  ./modulation-prostate-cancer-results-pval-fdaonly-nopos/test-filter-prc-2021-03-14-laptop-15.txt
::drugranking.py  --mode=nofilter --fdadrugsonly=True  -conf=(prc,DM,5) %allfilters%  >  ./modulation-prostate-cancer-results-pval-fdaonly-nopos/test-filter-prc-2021-03-14-laptop-16.txt
::drugranking.py  --mode=nofilter --fdadrugsonly=True  -conf=(prc,DM,6) %allfilters%  >  ./modulation-prostate-cancer-results-pval-fdaonly-nopos/test-filter-prc-2021-03-14-laptop-17.txt

::ECHO GEO data nofilter
::drugranking.py  --mode=nofilter --fdadrugsonly=True  -conf=(prc,GEO,0) %allfilters% >  ./modulation-prostate-cancer-results-pval-fdaonly-nopos/test-filter-prc-2021-03-14-laptop-21.txt
::drugranking.py  --mode=nofilter --fdadrugsonly=True  -conf=(prc,GEO,1) %allfilters%>   ./modulation-prostate-cancer-results-pval-fdaonly-nopos/test-filter-prc-2021-03-14-laptop-22.txt
::drugranking.py  --mode=nofilter --fdadrugsonly=True  -conf=(prc,GEO,2) %allfilters% >  ./modulation-prostate-cancer-results-pval-fdaonly-nopos/test-filter-prc-2021-03-14-laptop-23.txt
::drugranking.py  --mode=nofilter --fdadrugsonly=True  -conf=(prc,GEO,3) %allfilters% >  ./modulation-prostate-cancer-results-pval-fdaonly-nopos/test-filter-prc-2021-03-14-laptop-24.txt
::drugranking.py  --mode=nofilter --fdadrugsonly=True  -conf=(prc,GEO,4) %allfilters% >  ./modulation-prostate-cancer-results-pval-fdaonly-nopos/test-filter-prc-2021-03-14-laptop-25.txt
::drugranking.py  --mode=nofilter --fdadrugsonly=True  -conf=(prc,GEO,5) %allfilters% >  ./modulation-prostate-cancer-results-pval-fdaonly-nopos/test-filter-prc-2021-03-14-laptop-26.txt

::ECHO DM data nofilter
::drugranking.py  --mode=nofilter --fdadrugsonly=True  -conf=(prc,DM,0) %allfilters%  >  ./modulation-prostate-cancer-results-pval-fdaonly-nopos/test-filter-prc-2021-03-14-laptop-31.txt
::drugranking.py  --mode=nofilter --fdadrugsonly=True  -conf=(prc,DM,1) %allfilters%  >  ./modulation-prostate-cancer-results-pval-fdaonly-nopos/test-filter-prc-2021-03-14-laptop-32.txt
::drugranking.py  --mode=nofilter --fdadrugsonly=True  -conf=(prc,DM,2) %allfilters%  >  ./modulation-prostate-cancer-results-pval-fdaonly-nopos/test-filter-prc-2021-03-14-laptop-33.txt
::drugranking.py  --mode=nofilter --fdadrugsonly=True  -conf=(prc,DM,3) %allfilters%  >  ./modulation-prostate-cancer-results-pval-fdaonly-nopos/test-filter-prc-2021-03-14-laptop-34.txt
::drugranking.py  --mode=nofilter --fdadrugsonly=True  -conf=(prc,DM,4) %allfilters%  >  ./modulation-prostate-cancer-results-pval-fdaonly-nopos/test-filter-prc-2021-03-14-laptop-35.txt
::drugranking.py  --mode=nofilter --fdadrugsonly=True  -conf=(prc,DM,5) %allfilters%  >  ./modulation-prostate-cancer-results-pval-fdaonly-nopos/test-filter-prc-2021-03-14-laptop-36.txt

::

ECHO CMAPupdown data filter
drugranking.py  --mode=nofilter --fdadrugsonly=True  -conf=(prc,CMAPupdown,0) %allfilters%  >   ./modulation-prostate-cancer-results-pval-fdaonly-nopos/test-filter-prc-2021-03-14-laptop-41.txt
drugranking.py  --mode=nofilter --fdadrugsonly=True  -conf=(prc,CMAPupdown,1) %allfilters%  >   ./modulation-prostate-cancer-results-pval-fdaonly-nopos/test-filter-prc-2021-03-14-laptop-42.txt
drugranking.py  --mode=nofilter --fdadrugsonly=True  -conf=(prc,CMAPupdown,2) %allfilters%   >  ./modulation-prostate-cancer-results-pval-fdaonly-nopos/test-filter-prc-2021-03-14-laptop-43.txt
drugranking.py  --mode=nofilter --fdadrugsonly=True  -conf=(prc,CMAPupdown,3) %allfilters%   >  ./modulation-prostate-cancer-results-pval-fdaonly-nopos/test-filter-prc-2021-03-14-laptop-44.txt
::drugranking.py  --mode=nofilter --fdadrugsonly=True  -conf=(prc,CMAPupdown,4) %allfilters%   >  ./modulation-prostate-cancer-results-pval-fdaonly-nopos/test-filter-prc-2021-03-14-laptop-45.txt
::drugranking.py  --mode=nofilter --fdadrugsonly=True  -conf=(prc,CMAPupdown,5) %allfilters%   >  ./modulation-prostate-cancer-results-pval-fdaonly-nopos/test-filter-prc-2021-03-14-laptop-46.txt
::drugranking.py  --mode=nofilter --fdadrugsonly=True  -conf=(prc,CMAPupdown,6) %allfilters%   >  ./modulation-prostate-cancer-results-pval-fdaonly-nopos/test-filter-prc-2021-03-14-laptop-47.txt

ECHO L1000updown data filter
drugranking.py  --mode=nofilter --fdadrugsonly=True  -conf=(prc,L1000updown,0) %allfilters%  >  ./modulation-prostate-cancer-results-pval-fdaonly-nopos/test-filter-prc-2021-03-14-laptop-51.txt
drugranking.py  --mode=nofilter --fdadrugsonly=True  -conf=(prc,L1000updown,1) %allfilters%  >  ./modulation-prostate-cancer-results-pval-fdaonly-nopos/test-filter-prc-2021-03-14-laptop-52.txt
drugranking.py  --mode=nofilter --fdadrugsonly=True  -conf=(prc,L1000updown,2) %allfilters%  >  ./modulation-prostate-cancer-results-pval-fdaonly-nopos/test-filter-prc-2021-03-14-laptop-53.txt
drugranking.py  --mode=nofilter --fdadrugsonly=True  -conf=(prc,L1000updown,3) %allfilters%  >  ./modulation-prostate-cancer-results-pval-fdaonly-nopos/test-filter-prc-2021-03-14-laptop-54.txt
::drugranking.py  --mode=nofilter --fdadrugsonly=True  -conf=(prc,L1000updown,4) %allfilters%  >  ./modulation-prostate-cancer-results-pval-fdaonly-nopos/test-filter-prc-2021-03-14-laptop-55.txt
::drugranking.py  --mode=nofilter --fdadrugsonly=True  -conf=(prc,L1000updown,5) %allfilters%  >  ./modulation-prostate-cancer-results-pval-fdaonly-nopos/test-filter-prc-2021-03-14-laptop-56.txt
::drugranking.py  --mode=nofilter --fdadrugsonly=True  -conf=(prc,L1000updown,6) %allfilters%  >  ./modulation-prostate-cancer-results-pval-fdaonly-nopos/test-filter-prc-2021-03-14-laptop-57.txt

::ECHO CMAPupdown data nofilter
::drugranking.py  --mode=nofilter --fdadrugsonly=True  -conf=(prc,CMAPupdown,0) %allfilters% >  ./modulation-prostate-cancer-results-pval-fdaonly-nopos/test-filter-prc-2021-03-14-laptop-61.txt
::drugranking.py  --mode=nofilter --fdadrugsonly=True  -conf=(prc,CMAPupdown,1) %allfilters%>   ./modulation-prostate-cancer-results-pval-fdaonly-nopos/test-filter-prc-2021-03-14-laptop-62.txt
::drugranking.py  --mode=nofilter --fdadrugsonly=True  -conf=(prc,CMAPupdown,2) %allfilters% >  ./modulation-prostate-cancer-results-pval-fdaonly-nopos/test-filter-prc-2021-03-14-laptop-63.txt
::drugranking.py  --mode=nofilter --fdadrugsonly=True  -conf=(prc,CMAPupdown,3) %allfilters% >  ./modulation-prostate-cancer-results-pval-fdaonly-nopos/test-filter-prc-2021-03-14-laptop-64.txt
::drugranking.py  --mode=nofilter --fdadrugsonly=True  -conf=(prc,CMAPupdown,4) %allfilters% >  ./modulation-prostate-cancer-results-pval-fdaonly-nopos/test-filter-prc-2021-03-14-laptop-65.txt
::drugranking.py  --mode=nofilter --fdadrugsonly=True  -conf=(prc,CMAPupdown,5) %allfilters% >  ./modulation-prostate-cancer-results-pval-fdaonly-nopos/test-filter-prc-2021-03-14-laptop-66.txt

::ECHO L1000updown data nofilter
::drugranking.py  --mode=nofilter --fdadrugsonly=True  -conf=(prc,L1000updown,0) %allfilters%  >  ./modulation-prostate-cancer-results-pval-fdaonly-nopos/test-filter-prc-2021-03-14-laptop-71.txt
::drugranking.py  --mode=nofilter --fdadrugsonly=True  -conf=(prc,L1000updown,1) %allfilters%  >  ./modulation-prostate-cancer-results-pval-fdaonly-nopos/test-filter-prc-2021-03-14-laptop-72.txt
::drugranking.py  --mode=nofilter --fdadrugsonly=True  -conf=(prc,L1000updown,2) %allfilters%  >  ./modulation-prostate-cancer-results-pval-fdaonly-nopos/test-filter-prc-2021-03-14-laptop-73.txt
::drugranking.py  --mode=nofilter --fdadrugsonly=True  -conf=(prc,L1000updown,3) %allfilters%  >  ./modulation-prostate-cancer-results-pval-fdaonly-nopos/test-filter-prc-2021-03-14-laptop-74.txt
::drugranking.py  --mode=nofilter --fdadrugsonly=True  -conf=(prc,L1000updown,4) %allfilters%  >  ./modulation-prostate-cancer-results-pval-fdaonly-nopos/test-filter-prc-2021-03-14-laptop-75.txt
::drugranking.py  --mode=nofilter --fdadrugsonly=True  -conf=(prc,L1000updown,5) %allfilters%  >  ./modulation-prostate-cancer-results-pval-fdaonly-nopos/test-filter-prc-2021-03-14-laptop-76.txt