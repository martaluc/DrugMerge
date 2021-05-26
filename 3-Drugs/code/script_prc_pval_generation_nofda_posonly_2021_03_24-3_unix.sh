#!/bin/csh
echo  generation of ranking by pvalue with positive filtering

allfilters1=-filter=\(prc,MD,GEO,filter,deltadeg\)-filter=\(prc,MD,GEO,filter,size_x_deltadeg\)-filter=\(prc,cpd07j08,GEO,filter,deltadeg\)-filter=\(prc,cpd07j08,GEO,filter,size_x_deltadeg\)
allfilters2=-filter=\(prc,cpd07j06,DM,filter,deltadeg\)-filter=\(prc,cpd07j06,DM,filter,size_x_deltadeg\)-filter=\(prc,cpd05j08,DM,filter,deltadeg\)-filter=\(prc,cpd05j08,DM,filter,size_x_deltadeg\)
allfilters3=-filter=\(prc,MD,GEO,nofilter,deltadeg\)-filter=\(prc,MD,GEO,nofilter,size_x_deltadeg\)    -filter=\(prc,cpd07j08,GEO,nofilter,deltadeg\)-filter=\(prc,cpd07j08,GEO,nofilter,size_x_deltadeg\)
allfilters4=-filter=\(prc,cpd07j06,DM,nofilter,deltadeg\)-filter=\(prc,cpd07j06,DM,nofilter,size_x_deltadeg\)-filter=\(prc,cpd05j08,DM,nofilter,deltadeg\)-filter=\(prc,cpd05j08,DM,nofilter,size_x_deltadeg\)
allfilters5=-filter=\(prc,MD,CMAP,filter,deltadeg\)-filter=\(prc,MD,CMAP,filter,size_x_deltadeg\)-filter=\(prc,cpd07j08,CMAP,filter,deltadeg\)-filter=\(prc,cpd07j08,CMAP,filter,size_x_deltadeg\)
allfilters6=-filter=\(prc,MD,L1000,filter,deltadeg\)-filter=\(prc,MD,L1000,filter,size_x_deltadeg\)    -filter=\(prc,cpd07j08,L1000,filter,deltadeg\)-filter=\(prc,cpd07j08,L1000,filter,size_x_deltadeg\)
allfilters7=-filter=\(prc,MD,CMAP,nofilter,deltadeg\)-filter=\(prc,MD,CMAP,nofilter,size_x_deltadeg\)-filter=\(prc,cpd07j08,CMAP,nofilter,deltadeg\)-filter=\(prc,cpd07j08,CMAP,nofilter,size_x_deltadeg\)
allfilters8=-filter=\(prc,MD,L1000,nofilter,deltadeg\)-filter=\(prc,MD,L1000,nofilter,size_x_deltadeg\)    -filter=\(prc,cpd07j08,L1000,nofilter,deltadeg\)-filter=\(prc,cpd07j08,L1000,nofilter,size_x_deltadeg\)

allfilters=$allfilters1 $allfilters2 $allfilters3 $allfilters4 $allfilters5 $allfilters6 $allfilters7 $allfilters8$

echo GEO data filter
python drugranking.py  --mode=filteronly --fdadrugsonly=False  -conf=\(prc,GEO,0\) $allfilters1  >   ./modulation-prostate-cancer-results-pval-nofda-posonly/test-filter-prc-2021-03-14-laptop-01.txt  
python drugranking.py  --mode=filteronly --fdadrugsonly=False  -conf=\(prc,GEO,1\) $allfilters1  >   ./modulation-prostate-cancer-results-pval-nofda-posonly/test-filter-prc-2021-03-14-laptop-02.txt  
python drugranking.py  --mode=filteronly --fdadrugsonly=False  -conf=\(prc,GEO,2\) $allfilters1   >  ./modulation-prostate-cancer-results-pval-nofda-posonly/test-filter-prc-2021-03-14-laptop-03.txt  
python drugranking.py  --mode=filteronly --fdadrugsonly=False  -conf=\(prc,GEO,3\) $allfilters1   >  ./modulation-prostate-cancer-results-pval-nofda-posonly/test-filter-prc-2021-03-14-laptop-04.txt  

#python drugranking.py  --mode=filteronly --fdadrugsonly=False  -conf=\(prc,GEO,4\) $allfilters   >  ./modulation-prostate-cancer-results-pval-nofda-posonly/test-filter-prc-2021-03-14-laptop-05.txt  
#python drugranking.py  --mode=filteronly --fdadrugsonly=False  -conf=\(prc,GEO,5\) $allfilters   >  ./modulation-prostate-cancer-results-pval-nofda-posonly/test-filter-prc-2021-03-14-laptop-06.txt  
#python drugranking.py  --mode=filteronly --fdadrugsonly=False  -conf=\(prc,GEO,6\) $allfilters   >  ./modulation-prostate-cancer-results-pval-nofda-posonly/test-filter-prc-2021-03-14-laptop-07.txt  


echo DM data filter
python drugranking.py  --mode=filteronly --fdadrugsonly=False  -conf=\(prc,DM,0\) $allfilters2  >  ./modulation-prostate-cancer-results-pval-nofda-posonly/test-filter-prc-2021-03-14-laptop-11.txt  

#python drugranking.py  --mode=filteronly --fdadrugsonly=False  -conf=\(prc,DM,1\) $allfilters  >  ./modulation-prostate-cancer-results-pval-nofda-posonly/test-filter-prc-2021-03-14-laptop-12.txt  
#python drugranking.py  --mode=filteronly --fdadrugsonly=False  -conf=\(prc,DM,2\) $allfilters  >  ./modulation-prostate-cancer-results-pval-nofda-posonly/test-filter-prc-2021-03-14-laptop-13.txt  
#python drugranking.py  --mode=filteronly --fdadrugsonly=False  -conf=\(prc,DM,3\) $allfilters  >  ./modulation-prostate-cancer-results-pval-nofda-posonly/test-filter-prc-2021-03-14-laptop-14.txt  
#python drugranking.py  --mode=filteronly --fdadrugsonly=False  -conf=\(prc,DM,4\) $allfilters  >  ./modulation-prostate-cancer-results-pval-nofda-posonly/test-filter-prc-2021-03-14-laptop-15.txt  
#python drugranking.py  --mode=filteronly --fdadrugsonly=False  -conf=\(prc,DM,5\) $allfilters  >  ./modulation-prostate-cancer-results-pval-nofda-posonly/test-filter-prc-2021-03-14-laptop-16.txt  
#python drugranking.py  --mode=filteronly --fdadrugsonly=False  -conf=\(prc,DM,6\) $allfilters  >  ./modulation-prostate-cancer-results-pval-nofda-posonly/test-filter-prc-2021-03-14-laptop-17.txt  

echo GEO data nofilter
python drugranking.py  --mode=filteronly --fdadrugsonly=False  -conf=\(prc,GEO,0\) $allfilters3 >  ./modulation-prostate-cancer-results-pval-nofda-posonly/test-filter-prc-2021-03-14-laptop-21.txt  
python drugranking.py  --mode=filteronly --fdadrugsonly=False  -conf=\(prc,GEO,1\) $allfilters3 >   ./modulation-prostate-cancer-results-pval-nofda-posonly/test-filter-prc-2021-03-14-laptop-22.txt  
python drugranking.py  --mode=filteronly --fdadrugsonly=False  -conf=\(prc,GEO,2\) $allfilters3 >  ./modulation-prostate-cancer-results-pval-nofda-posonly/test-filter-prc-2021-03-14-laptop-23.txt  
python drugranking.py  --mode=filteronly --fdadrugsonly=False  -conf=\(prc,GEO,3\) $allfilters3 >  ./modulation-prostate-cancer-results-pval-nofda-posonly/test-filter-prc-2021-03-14-laptop-24.txt  

#python drugranking.py  --mode=filteronly --fdadrugsonly=False  -conf=\(prc,GEO,4\) $allfilters >  ./modulation-prostate-cancer-results-pval-nofda-posonly/test-filter-prc-2021-03-14-laptop-25.txt  
#python drugranking.py  --mode=filteronly --fdadrugsonly=False  -conf=\(prc,GEO,5\) $allfilters >  ./modulation-prostate-cancer-results-pval-nofda-posonly/test-filter-prc-2021-03-14-laptop-26.txt  

echo DM data nofilter
python drugranking.py  --mode=filteronly --fdadrugsonly=False  -conf=\(prc,DM,0\) $allfilters4  >  ./modulation-prostate-cancer-results-pval-nofda-posonly/test-filter-prc-2021-03-14-laptop-31.txt  

#python drugranking.py  --mode=filteronly --fdadrugsonly=False  -conf=\(prc,DM,1\) $allfilters  >  ./modulation-prostate-cancer-results-pval-nofda-posonly/test-filter-prc-2021-03-14-laptop-32.txt  
#python drugranking.py  --mode=filteronly --fdadrugsonly=False  -conf=\(prc,DM,2\) $allfilters  >  ./modulation-prostate-cancer-results-pval-nofda-posonly/test-filter-prc-2021-03-14-laptop-33.txt  
#python drugranking.py  --mode=filteronly --fdadrugsonly=False  -conf=\(prc,DM,3\) $allfilters  >  ./modulation-prostate-cancer-results-pval-nofda-posonly/test-filter-prc-2021-03-14-laptop-34.txt  
#python drugranking.py  --mode=filteronly --fdadrugsonly=False  -conf=\(prc,DM,4\) $allfilters  >  ./modulation-prostate-cancer-results-pval-nofda-posonly/test-filter-prc-2021-03-14-laptop-35.txt  
#python drugranking.py  --mode=filteronly --fdadrugsonly=False  -conf=\(prc,DM,5\) $allfilters  >  ./modulation-prostate-cancer-results-pval-nofda-posonly/test-filter-prc-2021-03-14-laptop-36.txt  

#

echo CMAPupdown data filter
python drugranking.py  --mode=filteronly --fdadrugsonly=False  -conf=\(prc,CMAPupdown,0\) $allfilters5  >   ./modulation-prostate-cancer-results-pval-nofda-posonly/test-filter-prc-2021-03-14-laptop-41.txt  
python drugranking.py  --mode=filteronly --fdadrugsonly=False  -conf=\(prc,CMAPupdown,1\) $allfilters5  >   ./modulation-prostate-cancer-results-pval-nofda-posonly/test-filter-prc-2021-03-14-laptop-42.txt  
python drugranking.py  --mode=filteronly --fdadrugsonly=False  -conf=\(prc,CMAPupdown,2\) $allfilters5   >  ./modulation-prostate-cancer-results-pval-nofda-posonly/test-filter-prc-2021-03-14-laptop-43.txt  
python drugranking.py  --mode=filteronly --fdadrugsonly=False  -conf=\(prc,CMAPupdown,3\) $allfilters5   >  ./modulation-prostate-cancer-results-pval-nofda-posonly/test-filter-prc-2021-03-14-laptop-44.txt  
#python drugranking.py  --mode=filteronly --fdadrugsonly=False  -conf=\(prc,CMAPupdown,4\) $allfilters   >  ./modulation-prostate-cancer-results-pval-nofda-posonly/test-filter-prc-2021-03-14-laptop-45.txt  
#python drugranking.py  --mode=filteronly --fdadrugsonly=False  -conf=\(prc,CMAPupdown,5\) $allfilters   >  ./modulation-prostate-cancer-results-pval-nofda-posonly/test-filter-prc-2021-03-14-laptop-46.txt  
#python drugranking.py  --mode=filteronly --fdadrugsonly=False  -conf=\(prc,CMAPupdown,6\) $allfilters   >  ./modulation-prostate-cancer-results-pval-nofda-posonly/test-filter-prc-2021-03-14-laptop-47.txt  

echo L1000updown data filter
python drugranking.py  --mode=filteronly --fdadrugsonly=False  -conf=\(prc,L1000updown,0\) $allfilters6  >  ./modulation-prostate-cancer-results-pval-nofda-posonly/test-filter-prc-2021-03-14-laptop-51.txt  
python drugranking.py  --mode=filteronly --fdadrugsonly=False  -conf=\(prc,L1000updown,1\) $allfilters6  >  ./modulation-prostate-cancer-results-pval-nofda-posonly/test-filter-prc-2021-03-14-laptop-52.txt  
python drugranking.py  --mode=filteronly --fdadrugsonly=False  -conf=\(prc,L1000updown,2\) $allfilters6  >  ./modulation-prostate-cancer-results-pval-nofda-posonly/test-filter-prc-2021-03-14-laptop-53.txt  
python drugranking.py  --mode=filteronly --fdadrugsonly=False  -conf=\(prc,L1000updown,3\) $allfilters6  >  ./modulation-prostate-cancer-results-pval-nofda-posonly/test-filter-prc-2021-03-14-laptop-54.txt  
#python drugranking.py  --mode=filteronly --fdadrugsonly=False  -conf=\(prc,L1000updown,4\) $allfilters  >  ./modulation-prostate-cancer-results-pval-nofda-posonly/test-filter-prc-2021-03-14-laptop-55.txt  
#python drugranking.py  --mode=filteronly --fdadrugsonly=False  -conf=\(prc,L1000updown,5\) $allfilters  >  ./modulation-prostate-cancer-results-pval-nofda-posonly/test-filter-prc-2021-03-14-laptop-56.txt  
#python drugranking.py  --mode=filteronly --fdadrugsonly=False  -conf=\(prc,L1000updown,6\) $allfilters  >  ./modulation-prostate-cancer-results-pval-nofda-posonly/test-filter-prc-2021-03-14-laptop-57.txt  

echo CMAPupdown data nofilter
python drugranking.py  --mode=filteronly --fdadrugsonly=False  -conf=\(prc,CMAPupdown,0\) $allfilters7 >  ./modulation-prostate-cancer-results-pval-nofda-posonly/test-filter-prc-2021-03-14-laptop-61.txt  
python drugranking.py  --mode=filteronly --fdadrugsonly=False  -conf=\(prc,CMAPupdown,1\) $allfilters7 >   ./modulation-prostate-cancer-results-pval-nofda-posonly/test-filter-prc-2021-03-14-laptop-62.txt  
python drugranking.py  --mode=filteronly --fdadrugsonly=False  -conf=\(prc,CMAPupdown,2\) $allfilters7 >  ./modulation-prostate-cancer-results-pval-nofda-posonly/test-filter-prc-2021-03-14-laptop-63.txt  
python drugranking.py  --mode=filteronly --fdadrugsonly=False  -conf=\(prc,CMAPupdown,3\) $allfilters7 >  ./modulation-prostate-cancer-results-pval-nofda-posonly/test-filter-prc-2021-03-14-laptop-64.txt  
#python drugranking.py  --mode=filteronly --fdadrugsonly=False  -conf=\(prc,CMAPupdown,4\) $allfilters >  ./modulation-prostate-cancer-results-pval-nofda-posonly/test-filter-prc-2021-03-14-laptop-65.txt  
#python drugranking.py  --mode=filteronly --fdadrugsonly=False  -conf=\(prc,CMAPupdown,5\) $allfilters >  ./modulation-prostate-cancer-results-pval-nofda-posonly/test-filter-prc-2021-03-14-laptop-66.txt  

echo L1000updown data nofilter
python drugranking.py  --mode=filteronly --fdadrugsonly=False  -conf=\(prc,L1000updown,0\) $allfilters8  >  ./modulation-prostate-cancer-results-pval-nofda-posonly/test-filter-prc-2021-03-14-laptop-71.txt  
python drugranking.py  --mode=filteronly --fdadrugsonly=False  -conf=\(prc,L1000updown,1\) $allfilters8  >  ./modulation-prostate-cancer-results-pval-nofda-posonly/test-filter-prc-2021-03-14-laptop-72.txt  
python drugranking.py  --mode=filteronly --fdadrugsonly=False  -conf=\(prc,L1000updown,2\) $allfilters8  >  ./modulation-prostate-cancer-results-pval-nofda-posonly/test-filter-prc-2021-03-14-laptop-73.txt  
python drugranking.py  --mode=filteronly --fdadrugsonly=False  -conf=\(prc,L1000updown,3\) $allfilters8  >  ./modulation-prostate-cancer-results-pval-nofda-posonly/test-filter-prc-2021-03-14-laptop-74.txt  
#python drugranking.py  --mode=filteronly --fdadrugsonly=False  -conf=\(prc,L1000updown,4\) $allfilters  >  ./modulation-prostate-cancer-results-pval-nofda-posonly/test-filter-prc-2021-03-14-laptop-75.txt  
#python drugranking.py  --mode=filteronly --fdadrugsonly=False  -conf=\(prc,L1000updown,5\) $allfilters  >  ./modulation-prostate-cancer-results-pval-nofda-posonly/test-filter-prc-2021-03-14-laptop-76.txt  
