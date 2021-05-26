#!/bin/csh
#
echo score generation GEO filter
python drugranking_by_direction.py --combinations=False --reuse=False  --weights=size_x_deltadeg --fdadrugsonly=True  --positiveonly=True  -conf=\(pbmc,cpd05j08,GEO,filter\)  > ./modulation-covid19-pbmc-results-score-fdaonly-posonly/test-filter-covid19-pbmc-2021-03-14-laptop-01.txt  
python drugranking_by_direction.py --combinations=False --reuse=False  --weights=deltadeg --fdadrugsonly=True  --positiveonly=True  -conf=\(pbmc,cpd05j08,GEO,filter\)  > ./modulation-covid19-pbmc-results-score-fdaonly-posonly/test-filter-covid19-pbmc-2021-03-14-laptop-02.txt  
python drugranking_by_direction.py --combinations=False --reuse=False  --weights=size_x_deltadeg --fdadrugsonly=True  --positiveonly=True  -conf=\(pbmc,MD,GEO,filter\)  > ./modulation-covid19-pbmc-results-score-fdaonly-posonly/test-filter-covid19-pbmc-2021-03-14-laptop-03.txt  
python drugranking_by_direction.py --combinations=False --reuse=False  --weights=deltadeg --fdadrugsonly=True  --positiveonly=True  -conf=\(pbmc,MD,GEO,filter\)  > ./modulation-covid19-pbmc-results-score-fdaonly-posonly/test-filter-covid19-pbmc-2021-03-14-laptop-04.txt  
python drugranking_by_direction.py --combinations=False --reuse=False  --weights=size_x_deltadeg --fdadrugsonly=True  --positiveonly=True  -conf=\(pbmc,cpd07j08,GEO,filter\)  > ./modulation-covid19-pbmc-results-score-fdaonly-posonly/test-filter-covid19-pbmc-2021-03-14-laptop-05.txt  
python drugranking_by_direction.py --combinations=False --reuse=False  --weights=deltadeg --fdadrugsonly=True  --positiveonly=True  -conf=\(pbmc,cpd07j08,GEO,filter\)  > ./modulation-covid19-pbmc-results-score-fdaonly-posonly/test-filter-covid19-pbmc-2021-03-14-laptop-06.txt  
#
echo score generation GEO nofilter
python drugranking_by_direction.py --combinations=False --reuse=False  --weights=size_x_deltadeg --fdadrugsonly=True  --positiveonly=True  -conf=\(pbmc,cpd05j08,GEO,nofilter\)  > ./modulation-covid19-pbmc-results-score-fdaonly-posonly/test-filter-covid19-pbmc-2021-03-14-laptop-11.txt  
python drugranking_by_direction.py --combinations=False --reuse=False  --weights=deltadeg --fdadrugsonly=True  --positiveonly=True  -conf=\(pbmc,cpd05j08,GEO,nofilter\)  > ./modulation-covid19-pbmc-results-score-fdaonly-posonly/test-filter-covid19-pbmc-2021-03-14-laptop-12.txt  
python drugranking_by_direction.py --combinations=False --reuse=False  --weights=size_x_deltadeg --fdadrugsonly=True  --positiveonly=True  -conf=\(pbmc,MD,GEO,nofilter\)  > ./modulation-covid19-pbmc-results-score-fdaonly-posonly/test-filter-covid19-pbmc-2021-03-14-laptop-13.txt  
python drugranking_by_direction.py --combinations=False --reuse=False  --weights=deltadeg --fdadrugsonly=True  --positiveonly=True  -conf=\(pbmc,MD,GEO,nofilter\)  > ./modulation-covid19-pbmc-results-score-fdaonly-posonly/test-filter-covid19-pbmc-2021-03-14-laptop-14.txt  
python drugranking_by_direction.py --combinations=False --reuse=False  --weights=size_x_deltadeg --fdadrugsonly=True  --positiveonly=True  -conf=\(pbmc,cpd07j08,GEO,nofilter\)  > ./modulation-covid19-pbmc-results-score-fdaonly-posonly/test-filter-covid19-pbmc-2021-03-14-laptop-15.txt  
python drugranking_by_direction.py --combinations=False --reuse=False  --weights=deltadeg --fdadrugsonly=True  --positiveonly=True  -conf=\(pbmc,cpd07j08,GEO,nofilter\)  > ./modulation-covid19-pbmc-results-score-fdaonly-posonly/test-filter-covid19-pbmc-2021-03-14-laptop-16.txt  
#
echo score generation DM filter
python drugranking_by_direction.py --combinations=False --reuse=False  --weights=size_x_deltadeg --fdadrugsonly=True  --positiveonly=True  -conf=\(pbmc,cpd05j08,DM,filter\)  > ./modulation-covid19-pbmc-results-score-fdaonly-posonly/test-filter-covid19-pbmc-2021-03-14-laptop-21.txt  
python drugranking_by_direction.py --combinations=False --reuse=False  --weights=deltadeg --fdadrugsonly=True  --positiveonly=True  -conf=\(pbmc,cpd05j08,DM,filter\)  > ./modulation-covid19-pbmc-results-score-fdaonly-posonly/test-filter-covid19-pbmc-2021-03-14-laptop-22.txt  
python drugranking_by_direction.py --combinations=False --reuse=False  --weights=size_x_deltadeg --fdadrugsonly=True  --positiveonly=True  -conf=\(pbmc,MD,DM,filter\)  > ./modulation-covid19-pbmc-results-score-fdaonly-posonly/test-filter-covid19-pbmc-2021-03-14-laptop-23.txt  
python drugranking_by_direction.py --combinations=False --reuse=False  --weights=deltadeg --fdadrugsonly=True  --positiveonly=True  -conf=\(pbmc,MD,DM,filter\)  > ./modulation-covid19-pbmc-results-score-fdaonly-posonly/test-filter-covid19-pbmc-2021-03-14-laptop-24.txt  
python drugranking_by_direction.py --combinations=False --reuse=False  --weights=size_x_deltadeg --fdadrugsonly=True  --positiveonly=True  -conf=\(pbmc,cpd07j08,DM,filter\)  > ./modulation-covid19-pbmc-results-score-fdaonly-posonly/test-filter-covid19-pbmc-2021-03-14-laptop-25.txt  
python drugranking_by_direction.py --combinations=False --reuse=False  --weights=deltadeg --fdadrugsonly=True  --positiveonly=True  -conf=\(pbmc,cpd07j08,DM,filter\)  > ./modulation-covid19-pbmc-results-score-fdaonly-posonly/test-filter-covid19-pbmc-2021-03-14-laptop-26.txt  
#
echo score generation DM nofilter
python drugranking_by_direction.py --combinations=False --reuse=False  --weights=size_x_deltadeg --fdadrugsonly=True  --positiveonly=True  -conf=\(pbmc,cpd05j08,DM,nofilter\)  > ./modulation-covid19-pbmc-results-score-fdaonly-posonly/test-filter-covid19-pbmc-2021-03-14-laptop-31.txt  
python drugranking_by_direction.py --combinations=False --reuse=False  --weights=deltadeg --fdadrugsonly=True  --positiveonly=True  -conf=\(pbmc,cpd05j08,DM,nofilter\)  > ./modulation-covid19-pbmc-results-score-fdaonly-posonly/test-filter-covid19-pbmc-2021-03-14-laptop-32.txt  
python drugranking_by_direction.py --combinations=False --reuse=False  --weights=size_x_deltadeg --fdadrugsonly=True  --positiveonly=True  -conf=\(pbmc,MD,DM,nofilter\)  > ./modulation-covid19-pbmc-results-score-fdaonly-posonly/test-filter-covid19-pbmc-2021-03-14-laptop-33.txt  
python drugranking_by_direction.py --combinations=False --reuse=False  --weights=deltadeg --fdadrugsonly=True  --positiveonly=True  -conf=\(pbmc,MD,DM,nofilter\)  > ./modulation-covid19-pbmc-results-score-fdaonly-posonly/test-filter-covid19-pbmc-2021-03-14-laptop-34.txt  
python drugranking_by_direction.py --combinations=False --reuse=False  --weights=size_x_deltadeg --fdadrugsonly=True  --positiveonly=True  -conf=\(pbmc,cpd07j08,DM,nofilter\)  > ./modulation-covid19-pbmc-results-score-fdaonly-posonly/test-filter-covid19-pbmc-2021-03-14-laptop-35.txt  
python drugranking_by_direction.py --combinations=False --reuse=False  --weights=deltadeg --fdadrugsonly=True  --positiveonly=True  -conf=\(pbmc,cpd07j08,DM,nofilter\)  > ./modulation-covid19-pbmc-results-score-fdaonly-posonly/test-filter-covid19-pbmc-2021-03-14-laptop-36.txt  
#
#echo score generation CMAP filter
#python drugranking_by_direction.py --combinations=False --reuse=False  --weights=size_x_deltadeg --fdadrugsonly=True  --positiveonly=True  -conf=\(pbmc,cpd05j08,CMAP,filter\)  > ./modulation-covid19-pbmc-results-score-fdaonly-posonly/test-filter-covid19-pbmc-2021-03-14-laptop-41.txt  
#python drugranking_by_direction.py --combinations=False --reuse=False  --weights=deltadeg --fdadrugsonly=True  --positiveonly=True  -conf=\(pbmc,cpd05j08,CMAP,filter\)  > ./modulation-covid19-pbmc-results-score-fdaonly-posonly/test-filter-covid19-pbmc-2021-03-14-laptop-42.txt  
#python drugranking_by_direction.py --combinations=False --reuse=False  --weights=size_x_deltadeg --fdadrugsonly=True  --positiveonly=True  -conf=\(pbmc,MD,CMAP,filter\)  > ./modulation-covid19-pbmc-results-score-fdaonly-posonly/test-filter-covid19-pbmc-2021-03-14-laptop-43.txt  
#python drugranking_by_direction.py --combinations=False --reuse=False  --weights=deltadeg --fdadrugsonly=True  --positiveonly=True  -conf=\(pbmc,MD,CMAP,filter\)  > ./modulation-covid19-pbmc-results-score-fdaonly-posonly/test-filter-covid19-pbmc-2021-03-14-laptop-44.txt  
#python drugranking_by_direction.py --combinations=False --reuse=False  --weights=size_x_deltadeg --fdadrugsonly=True  --positiveonly=True  -conf=\(pbmc,cpd07j08,CMAP,filter\)  > ./modulation-covid19-pbmc-results-score-fdaonly-posonly/test-filter-covid19-pbmc-2021-03-14-laptop-45.txt  
#python drugranking_by_direction.py --combinations=False --reuse=False  --weights=deltadeg --fdadrugsonly=True  --positiveonly=True  -conf=\(pbmc,cpd07j08,CMAP,filter\)  > ./modulation-covid19-pbmc-results-score-fdaonly-posonly/test-filter-covid19-pbmc-2021-03-14-laptop-46.txt  
#
#echo score generation CMAP nofilter
#python drugranking_by_direction.py --combinations=False --reuse=False  --weights=size_x_deltadeg --fdadrugsonly=True  --positiveonly=True  -conf=\(pbmc,cpd05j08,CMAP,nofilter\)  > ./modulation-covid19-pbmc-results-score-fdaonly-posonly/test-filter-covid19-pbmc-2021-03-14-laptop-51.txt  
#python drugranking_by_direction.py --combinations=False --reuse=False  --weights=deltadeg --fdadrugsonly=True  --positiveonly=True  -conf=\(pbmc,cpd05j08,CMAP,nofilter\)  > ./modulation-covid19-pbmc-results-score-fdaonly-posonly/test-filter-covid19-pbmc-2021-03-14-laptop-52.txt  
#python drugranking_by_direction.py --combinations=False --reuse=False  --weights=size_x_deltadeg --fdadrugsonly=True  --positiveonly=True  -conf=\(pbmc,MD,CMAP,nofilter\)  > ./modulation-covid19-pbmc-results-score-fdaonly-posonly/test-filter-covid19-pbmc-2021-03-14-laptop-53.txt  
#python drugranking_by_direction.py --combinations=False --reuse=False  --weights=deltadeg --fdadrugsonly=True  --positiveonly=True  -conf=\(pbmc,MD,CMAP,nofilter\)  > ./modulation-covid19-pbmc-results-score-fdaonly-posonly/test-filter-covid19-pbmc-2021-03-14-laptop-54.txt  
#python drugranking_by_direction.py --combinations=False --reuse=False  --weights=size_x_deltadeg --fdadrugsonly=True  --positiveonly=True  -conf=\(pbmc,cpd07j08,CMAP,nofilter\)  > ./modulation-covid19-pbmc-results-score-fdaonly-posonly/test-filter-covid19-pbmc-2021-03-14-laptop-55.txt  
#python drugranking_by_direction.py --combinations=False --reuse=False  --weights=deltadeg --fdadrugsonly=True  --positiveonly=True  -conf=\(pbmc,cpd07j08,CMAP,nofilter\)  > ./modulation-covid19-pbmc-results-score-fdaonly-posonly/test-filter-covid19-pbmc-2021-03-14-laptop-56.txt  
#
#echo score generation L1000 filter
#python drugranking_by_direction.py --combinations=False --reuse=False  --weights=size_x_deltadeg --fdadrugsonly=True  --positiveonly=True  -conf=\(pbmc,cpd05j08,L1000,filter\)  > ./modulation-covid19-pbmc-results-score-fdaonly-posonly/test-filter-covid19-pbmc-2021-03-14-laptop-61.txt  
#python drugranking_by_direction.py --combinations=False --reuse=False  --weights=deltadeg --fdadrugsonly=True  --positiveonly=True  -conf=\(pbmc,cpd05j08,L1000,filter\)  > ./modulation-covid19-pbmc-results-score-fdaonly-posonly/test-filter-covid19-pbmc-2021-03-14-laptop-62.txt  
#python drugranking_by_direction.py --combinations=False --reuse=False  --weights=size_x_deltadeg --fdadrugsonly=True  --positiveonly=True  -conf=\(pbmc,MD,L1000,filter\)  > ./modulation-covid19-pbmc-results-score-fdaonly-posonly/test-filter-covid19-pbmc-2021-03-14-laptop-63.txt  
#python drugranking_by_direction.py --combinations=False --reuse=False  --weights=deltadeg --fdadrugsonly=True  --positiveonly=True  -conf=\(pbmc,MD,L1000,filter\)  > ./modulation-covid19-pbmc-results-score-fdaonly-posonly/test-filter-covid19-pbmc-2021-03-14-laptop-64.txt  
#python drugranking_by_direction.py --combinations=False --reuse=False  --weights=size_x_deltadeg --fdadrugsonly=True  --positiveonly=True  -conf=\(pbmc,cpd07j08,L1000,filter\)  > ./modulation-covid19-pbmc-results-score-fdaonly-posonly/test-filter-covid19-pbmc-2021-03-14-laptop-65.txt  
#python drugranking_by_direction.py --combinations=False --reuse=False  --weights=deltadeg --fdadrugsonly=True  --positiveonly=True  -conf=\(pbmc,cpd07j08,L1000,filter\)  > ./modulation-covid19-pbmc-results-score-fdaonly-posonly/test-filter-covid19-pbmc-2021-03-14-laptop-66.txt  
#
#echo score generation L1000 nofilter
#python drugranking_by_direction.py --combinations=False --reuse=False  --weights=size_x_deltadeg --fdadrugsonly=True  --positiveonly=True  -conf=\(pbmc,MD,L1000,nofilter\)  > ./modulation-covid19-pbmc-results-score-fdaonly-posonly/test-filter-covid19-pbmc-2021-03-14-laptop-71.txt  
#python drugranking_by_direction.py --combinations=False --reuse=False  --weights=deltadeg --fdadrugsonly=True  --positiveonly=True  -conf=\(pbmc,MD,L1000,nofilter\)  > ./modulation-covid19-pbmc-results-score-fdaonly-posonly/test-filter-covid19-pbmc-2021-03-14-laptop-72.txt  
#python drugranking_by_direction.py --combinations=False --reuse=False  --weights=size_x_deltadeg --fdadrugsonly=True  --positiveonly=True  -conf=\(pbmc,cpd07j08,L1000,nofilter\)  > ./modulation-covid19-pbmc-results-score-fdaonly-posonly/test-filter-covid19-pbmc-2021-03-14-laptop-73.txt  
#python drugranking_by_direction.py --combinations=False --reuse=False  --weights=deltadeg --fdadrugsonly=True  --positiveonly=True  -conf=\(pbmc,cpd07j08,L1000,nofilter\)  > ./modulation-covid19-pbmc-results-score-fdaonly-posonly/test-filter-covid19-pbmc-2021-03-14-laptop-74.txt  
#python drugranking_by_direction.py --combinations=False --reuse=False  --weights=size_x_deltadeg --fdadrugsonly=True  --positiveonly=True  -conf=\(pbmc,cpd05j08,L1000,nofilter\)  > ./modulation-covid19-pbmc-results-score-fdaonly-posonly/test-filter-covid19-pbmc-2021-03-14-laptop-75.txt  
#python drugranking_by_direction.py --combinations=False --reuse=False  --weights=deltadeg --fdadrugsonly=True  --positiveonly=True  -conf=\(pbmc,cpd05j08,L1000,nofilter\)  > ./modulation-covid19-pbmc-results-score-fdaonly-posonly/test-filter-covid19-pbmc-2021-03-14-laptop-76.txt  

