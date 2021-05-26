@ECHO OFF
ECHO  generation of ranking by pvalue with positive filtering

SET allfilters1=-filter=(pbmc,MD,GEO,filter,deltadeg) -filter=(pbmc,MD,GEO,filter,size_x_deltadeg)  -filter=(pbmc,cpd05j08,GEO,filter,deltadeg) -filter=(pbmc,cpd05j08,GEO,filter,size_x_deltadeg) -filter=(pbmc,cpd07j08,GEO,filter,deltadeg) -filter=(pbmc,cpd07j08,GEO,filter,size_x_deltadeg)
SET allfilters2=-filter=(pbmc,MD,DM,filter,deltadeg) -filter=(pbmc,MD,DM,filter,size_x_deltadeg)  -filter=(pbmc,cpd05j08,DM,filter,deltadeg) -filter=(pbmc,cpd05j08,DM,filter,size_x_deltadeg) -filter=(pbmc,cpd07j08,DM,filter,deltadeg) -filter=(pbmc,cpd07j08,DM,filter,size_x_deltadeg)
SET allfilters3=-filter=(pbmc,MD,GEO,nofilter,deltadeg) -filter=(pbmc,MD,GEO,nofilter,size_x_deltadeg)  -filter=(pbmc,cpd05j08,GEO,nofilter,deltadeg) -filter=(pbmc,cpd05j08,GEO,nofilter,size_x_deltadeg) -filter=(pbmc,cpd07j08,GEO,nofilter,deltadeg) -filter=(pbmc,cpd07j08,GEO,nofilter,size_x_deltadeg)
SET allfilters4=-filter=(pbmc,MD,DM,nofilter,deltadeg) -filter=(pbmc,MD,DM,nofilter,size_x_deltadeg)  -filter=(pbmc,cpd05j08,DM,nofilter,deltadeg) -filter=(pbmc,cpd05j08,DM,nofilter,size_x_deltadeg) -filter=(pbmc,cpd07j08,DM,nofilter,deltadeg) -filter=(pbmc,cpd07j08,DM,nofilter,size_x_deltadeg)

ECHO GEO data filter
drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=(pbmc,GEO,0) %allfilters1%  >   ./modulation-covid19-pbmc-results-pval-fdaonly-posonly/test-filter-pbmc-2021-03-14-laptop-01.txt
drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=(pbmc,GEO,1) %allfilters1%  >   ./modulation-covid19-pbmc-results-pval-fdaonly-posonly/test-filter-pbmc-2021-03-14-laptop-02.txt
drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=(pbmc,GEO,2) %allfilters1%   >  ./modulation-covid19-pbmc-results-pval-fdaonly-posonly/test-filter-pbmc-2021-03-14-laptop-03.txt
drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=(pbmc,GEO,3) %allfilters1%   >  ./modulation-covid19-pbmc-results-pval-fdaonly-posonly/test-filter-pbmc-2021-03-14-laptop-04.txt
drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=(pbmc,GEO,4) %allfilters1%   >  ./modulation-covid19-pbmc-results-pval-fdaonly-posonly/test-filter-pbmc-2021-03-14-laptop-05.txt
drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=(pbmc,GEO,5) %allfilters1%   >  ./modulation-covid19-pbmc-results-pval-fdaonly-posonly/test-filter-pbmc-2021-03-14-laptop-06.txt
drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=(pbmc,GEO,6) %allfilters1%   >  ./modulation-covid19-pbmc-results-pval-fdaonly-posonly/test-filter-pbmc-2021-03-14-laptop-07.txt

ECHO DM data filter
drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=(pbmc,DM,0) %allfilters2%  >  ./modulation-covid19-pbmc-results-pval-fdaonly-posonly/test-filter-pbmc-2021-03-14-laptop-11.txt
drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=(pbmc,DM,1) %allfilters2%  >  ./modulation-covid19-pbmc-results-pval-fdaonly-posonly/test-filter-pbmc-2021-03-14-laptop-12.txt
drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=(pbmc,DM,2) %allfilters2%  >  ./modulation-covid19-pbmc-results-pval-fdaonly-posonly/test-filter-pbmc-2021-03-14-laptop-13.txt
drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=(pbmc,DM,3) %allfilters2%  >  ./modulation-covid19-pbmc-results-pval-fdaonly-posonly/test-filter-pbmc-2021-03-14-laptop-14.txt
drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=(pbmc,DM,4) %allfilters2%  >  ./modulation-covid19-pbmc-results-pval-fdaonly-posonly/test-filter-pbmc-2021-03-14-laptop-15.txt
drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=(pbmc,DM,5) %allfilters2%  >  ./modulation-covid19-pbmc-results-pval-fdaonly-posonly/test-filter-pbmc-2021-03-14-laptop-16.txt
drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=(pbmc,DM,6) %allfilters2%  >  ./modulation-covid19-pbmc-results-pval-fdaonly-posonly/test-filter-pbmc-2021-03-14-laptop-17.txt

ECHO GEO data nofilter
drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=(pbmc,GEO,0) %allfilters3% >  ./modulation-covid19-pbmc-results-pval-fdaonly-posonly/test-filter-pbmc-2021-03-14-laptop-21.txt
drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=(pbmc,GEO,1) %allfilters3%>   ./modulation-covid19-pbmc-results-pval-fdaonly-posonly/test-filter-pbmc-2021-03-14-laptop-22.txt
drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=(pbmc,GEO,2) %allfilters3% >  ./modulation-covid19-pbmc-results-pval-fdaonly-posonly/test-filter-pbmc-2021-03-14-laptop-23.txt
drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=(pbmc,GEO,3) %allfilters3% >  ./modulation-covid19-pbmc-results-pval-fdaonly-posonly/test-filter-pbmc-2021-03-14-laptop-24.txt
drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=(pbmc,GEO,4) %allfilters3% >  ./modulation-covid19-pbmc-results-pval-fdaonly-posonly/test-filter-pbmc-2021-03-14-laptop-25.txt
drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=(pbmc,GEO,5) %allfilters3% >  ./modulation-covid19-pbmc-results-pval-fdaonly-posonly/test-filter-pbmc-2021-03-14-laptop-26.txt
drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=(pbmc,GEO,6) %allfilters3% >  ./modulation-covid19-pbmc-results-pval-fdaonly-posonly/test-filter-pbmc-2021-03-14-laptop-27.txt

ECHO DM data nofilter
drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=(pbmc,DM,0) %allfilters4%  >  ./modulation-covid19-pbmc-results-pval-fdaonly-posonly/test-filter-pbmc-2021-03-14-laptop-31.txt
drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=(pbmc,DM,1) %allfilters4%  >  ./modulation-covid19-pbmc-results-pval-fdaonly-posonly/test-filter-pbmc-2021-03-14-laptop-32.txt
drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=(pbmc,DM,2) %allfilters4%  >  ./modulation-covid19-pbmc-results-pval-fdaonly-posonly/test-filter-pbmc-2021-03-14-laptop-33.txt
drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=(pbmc,DM,3) %allfilters4%  >  ./modulation-covid19-pbmc-results-pval-fdaonly-posonly/test-filter-pbmc-2021-03-14-laptop-34.txt
drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=(pbmc,DM,4) %allfilters4%  >  ./modulation-covid19-pbmc-results-pval-fdaonly-posonly/test-filter-pbmc-2021-03-14-laptop-35.txt
drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=(pbmc,DM,5) %allfilters4%  >  ./modulation-covid19-pbmc-results-pval-fdaonly-posonly/test-filter-pbmc-2021-03-14-laptop-36.txt
drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=(pbmc,DM,6) %allfilters4%  >  ./modulation-covid19-pbmc-results-pval-fdaonly-posonly/test-filter-pbmc-2021-03-14-laptop-37.txt

::
SET allfilters5=-filter=(pbmc,MD,CMAP,filter,deltadeg) -filter=(pbmc,MD,CMAP,filter,size_x_deltadeg)  -filter=(pbmc,cpd05j08,CMAP,filter,deltadeg) -filter=(pbmc,cpd05j08,CMAP,filter,size_x_deltadeg) -filter=(pbmc,cpd07j08,CMAP,filter,deltadeg) -filter=(pbmc,cpd07j08,CMAP,filter,size_x_deltadeg)
SET allfilters6=-filter=(pbmc,MD,L1000,filter,deltadeg) -filter=(pbmc,MD,L1000,filter,size_x_deltadeg)  -filter=(pbmc,cpd05j08,L1000,filter,deltadeg) -filter=(pbmc,cpd05j08,L1000,filter,size_x_deltadeg) -filter=(pbmc,cpd07j08,L1000,filter,deltadeg) -filter=(pbmc,cpd07j08,L1000,filter,size_x_deltadeg)
SET allfilters7=-filter=(pbmc,MD,CMAP,nofilter,deltadeg) -filter=(pbmc,MD,CMAP,nofilter,size_x_deltadeg)  -filter=(pbmc,cpd05j08,CMAP,nofilter,deltadeg) -filter=(pbmc,cpd05j08,CMAP,nofilter,size_x_deltadeg) -filter=(pbmc,cpd07j08,CMAP,nofilter,deltadeg) -filter=(pbmc,cpd07j08,CMAP,nofilter,size_x_deltadeg)
SET allfilters8=-filter=(pbmc,MD,L1000,nofilter,deltadeg) -filter=(pbmc,MD,L1000,nofilter,size_x_deltadeg)  -filter=(pbmc,cpd05j08,L1000,nofilter,deltadeg) -filter=(pbmc,cpd05j08,L1000,nofilter,size_x_deltadeg) -filter=(pbmc,cpd07j08,L1000,nofilter,deltadeg) -filter=(pbmc,cpd07j08,L1000,nofilter,size_x_deltadeg)

ECHO CMAPupdown data filter
drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=(pbmc,CMAPupdown,0) %allfilters5%  >   ./modulation-covid19-pbmc-results-pval-fdaonly-posonly/test-filter-pbmc-2021-03-14-laptop-41.txt
drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=(pbmc,CMAPupdown,1) %allfilters5%  >   ./modulation-covid19-pbmc-results-pval-fdaonly-posonly/test-filter-pbmc-2021-03-14-laptop-42.txt
drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=(pbmc,CMAPupdown,2) %allfilters5%   >  ./modulation-covid19-pbmc-results-pval-fdaonly-posonly/test-filter-pbmc-2021-03-14-laptop-43.txt
drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=(pbmc,CMAPupdown,3) %allfilters5%   >  ./modulation-covid19-pbmc-results-pval-fdaonly-posonly/test-filter-pbmc-2021-03-14-laptop-44.txt
drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=(pbmc,CMAPupdown,4) %allfilters5%   >  ./modulation-covid19-pbmc-results-pval-fdaonly-posonly/test-filter-pbmc-2021-03-14-laptop-45.txt
drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=(pbmc,CMAPupdown,5) %allfilters5%   >  ./modulation-covid19-pbmc-results-pval-fdaonly-posonly/test-filter-pbmc-2021-03-14-laptop-46.txt
drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=(pbmc,CMAPupdown,6) %allfilters5%   >  ./modulation-covid19-pbmc-results-pval-fdaonly-posonly/test-filter-pbmc-2021-03-14-laptop-47.txt

ECHO L1000updown data filter
drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=(pbmc,L1000updown,0) %allfilters6%  >  ./modulation-covid19-pbmc-results-pval-fdaonly-posonly/test-filter-pbmc-2021-03-14-laptop-51.txt
drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=(pbmc,L1000updown,1) %allfilters6%  >  ./modulation-covid19-pbmc-results-pval-fdaonly-posonly/test-filter-pbmc-2021-03-14-laptop-52.txt
drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=(pbmc,L1000updown,2) %allfilters6%  >  ./modulation-covid19-pbmc-results-pval-fdaonly-posonly/test-filter-pbmc-2021-03-14-laptop-53.txt
drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=(pbmc,L1000updown,3) %allfilters6%  >  ./modulation-covid19-pbmc-results-pval-fdaonly-posonly/test-filter-pbmc-2021-03-14-laptop-54.txt
drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=(pbmc,L1000updown,4) %allfilters6%  >  ./modulation-covid19-pbmc-results-pval-fdaonly-posonly/test-filter-pbmc-2021-03-14-laptop-55.txt
drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=(pbmc,L1000updown,5) %allfilters6%  >  ./modulation-covid19-pbmc-results-pval-fdaonly-posonly/test-filter-pbmc-2021-03-14-laptop-56.txt
drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=(pbmc,L1000updown,6) %allfilters6%  >  ./modulation-covid19-pbmc-results-pval-fdaonly-posonly/test-filter-pbmc-2021-03-14-laptop-57.txt

ECHO CMAPupdown data nofilter
drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=(pbmc,CMAPupdown,0) %allfilters7% >  ./modulation-covid19-pbmc-results-pval-fdaonly-posonly/test-filter-pbmc-2021-03-14-laptop-61.txt
drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=(pbmc,CMAPupdown,1) %allfilters7%>   ./modulation-covid19-pbmc-results-pval-fdaonly-posonly/test-filter-pbmc-2021-03-14-laptop-62.txt
drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=(pbmc,CMAPupdown,2) %allfilters7% >  ./modulation-covid19-pbmc-results-pval-fdaonly-posonly/test-filter-pbmc-2021-03-14-laptop-63.txt
drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=(pbmc,CMAPupdown,3) %allfilters7% >  ./modulation-covid19-pbmc-results-pval-fdaonly-posonly/test-filter-pbmc-2021-03-14-laptop-64.txt
drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=(pbmc,CMAPupdown,4) %allfilters7% >  ./modulation-covid19-pbmc-results-pval-fdaonly-posonly/test-filter-pbmc-2021-03-14-laptop-65.txt
drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=(pbmc,CMAPupdown,5) %allfilters7% >  ./modulation-covid19-pbmc-results-pval-fdaonly-posonly/test-filter-pbmc-2021-03-14-laptop-66.txt
drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=(pbmc,CMAPupdown,6) %allfilters7% >  ./modulation-covid19-pbmc-results-pval-fdaonly-posonly/test-filter-pbmc-2021-03-14-laptop-67.txt

ECHO L1000updown data nofilter
drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=(pbmc,L1000updown,0) %allfilters8%  >  ./modulation-covid19-pbmc-results-pval-fdaonly-posonly/test-filter-pbmc-2021-03-14-laptop-71.txt
drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=(pbmc,L1000updown,1) %allfilters8%  >  ./modulation-covid19-pbmc-results-pval-fdaonly-posonly/test-filter-pbmc-2021-03-14-laptop-72.txt
drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=(pbmc,L1000updown,2) %allfilters8%  >  ./modulation-covid19-pbmc-results-pval-fdaonly-posonly/test-filter-pbmc-2021-03-14-laptop-73.txt
drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=(pbmc,L1000updown,3) %allfilters8%  >  ./modulation-covid19-pbmc-results-pval-fdaonly-posonly/test-filter-pbmc-2021-03-14-laptop-74.txt
drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=(pbmc,L1000updown,4) %allfilters8%  >  ./modulation-covid19-pbmc-results-pval-fdaonly-posonly/test-filter-pbmc-2021-03-14-laptop-75.txt
drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=(pbmc,L1000updown,5) %allfilters8%  >  ./modulation-covid19-pbmc-results-pval-fdaonly-posonly/test-filter-pbmc-2021-03-14-laptop-76.txt
drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=(pbmc,L1000updown,6) %allfilters8%  >  ./modulation-covid19-pbmc-results-pval-fdaonly-posonly/test-filter-pbmc-2021-03-14-laptop-77.txt
