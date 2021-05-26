#!/bin/csh
#
echo score generation GEO filter
python drugranking_by_direction.py --combinations=False --reuse=True  --weights=size_x_deltadeg --fdadrugsonly=True  --positiveonly=True  -conf=\(arth,cpd05j08,GEO,filter\)  > ./modulation-arthritis-results-fdaonly-posonly/test-filter-arth-2021-02-01-01.txt  
python drugranking_by_direction.py --combinations=False --reuse=True  --weights=deltadeg --fdadrugsonly=True  --positiveonly=True  -conf=\(arth,cpd05j08,GEO,filter\)  > ./modulation-arthritis-results-fdaonly-posonly/test-filter-arth-2021-02-01-02.txt  
python drugranking_by_direction.py --combinations=False --reuse=True  --weights=size_x_deltadeg --fdadrugsonly=True  --positiveonly=True  -conf=\(arth,MD,GEO,filter\)  > ./modulation-arthritis-results-fdaonly-posonly/test-filter-arth-2021-02-01-03.txt  
python drugranking_by_direction.py --combinations=False --reuse=True  --weights=deltadeg --fdadrugsonly=True  --positiveonly=True  -conf=\(arth,MD,GEO,filter\)  > ./modulation-arthritis-results-fdaonly-posonly/test-filter-arth-2021-02-01-04.txt  
#
echo score generation GEO nofilter
python drugranking_by_direction.py --combinations=False --reuse=True  --weights=size_x_deltadeg --fdadrugsonly=True  --positiveonly=True  -conf=\(arth,cpd05j08,GEO,nofilter\)  > ./modulation-arthritis-results-fdaonly-posonly/test-filter-arth-2021-02-01-11.txt  
python drugranking_by_direction.py --combinations=False --reuse=True  --weights=deltadeg --fdadrugsonly=True  --positiveonly=True  -conf=\(arth,cpd05j08,GEO,nofilter\)  > ./modulation-arthritis-results-fdaonly-posonly/test-filter-arth-2021-02-01-12.txt  
python drugranking_by_direction.py --combinations=False --reuse=True  --weights=size_x_deltadeg --fdadrugsonly=True  --positiveonly=True  -conf=\(arth,MD,GEO,nofilter\)  > ./modulation-arthritis-results-fdaonly-posonly/test-filter-arth-2021-02-01-13.txt  
python drugranking_by_direction.py --combinations=False --reuse=True  --weights=deltadeg --fdadrugsonly=True  --positiveonly=True  -conf=\(arth,MD,GEO,nofilter\)  > ./modulation-arthritis-results-fdaonly-posonly/test-filter-arth-2021-02-01-14.txt  
#
echo score generation DM filter
python drugranking_by_direction.py --combinations=False --reuse=True  --weights=size_x_deltadeg --fdadrugsonly=True  --positiveonly=True  -conf=\(arth,cpd05j08,DM,filter\)  > ./modulation-arthritis-results-fdaonly-posonly/test-filter-arth-2021-02-01-21.txt  
python drugranking_by_direction.py --combinations=False --reuse=True  --weights=deltadeg --fdadrugsonly=True  --positiveonly=True  -conf=\(arth,cpd05j08,DM,filter\)  > ./modulation-arthritis-results-fdaonly-posonly/test-filter-arth-2021-02-01-22.txt  
python drugranking_by_direction.py --combinations=False --reuse=True  --weights=size_x_deltadeg --fdadrugsonly=True  --positiveonly=True  -conf=\(arth,MD,DM,filter\)  > ./modulation-arthritis-results-fdaonly-posonly/test-filter-arth-2021-02-01-23.txt  
python drugranking_by_direction.py --combinations=False --reuse=True  --weights=deltadeg --fdadrugsonly=True  --positiveonly=True  -conf=\(arth,MD,DM,filter\)  > ./modulation-arthritis-results-fdaonly-posonly/test-filter-arth-2021-02-01-24.txt  
#
echo score generation DM nofilter
python drugranking_by_direction.py --combinations=False --reuse=True  --weights=size_x_deltadeg --fdadrugsonly=True  --positiveonly=True  -conf=\(arth,cpd05j08,DM,nofilter\)  > ./modulation-arthritis-results-fdaonly-posonly/test-filter-arth-2021-02-01-31.txt  
python drugranking_by_direction.py --combinations=False --reuse=True  --weights=deltadeg --fdadrugsonly=True  --positiveonly=True  -conf=\(arth,cpd05j08,DM,nofilter\)  > ./modulation-arthritis-results-fdaonly-posonly/test-filter-arth-2021-02-01-32.txt  
python drugranking_by_direction.py --combinations=False --reuse=True  --weights=size_x_deltadeg --fdadrugsonly=True  --positiveonly=True  -conf=\(arth,MD,DM,nofilter\)  > ./modulation-arthritis-results-fdaonly-posonly/test-filter-arth-2021-02-01-33.txt  
python drugranking_by_direction.py --combinations=False --reuse=True  --weights=deltadeg --fdadrugsonly=True  --positiveonly=True  -conf=\(arth,MD,DM,nofilter\)  > ./modulation-arthritis-results-fdaonly-posonly/test-filter-arth-2021-02-01-34.txt  
#
echo score generation CMAP filter
python drugranking_by_direction.py --combinations=False --reuse=True  --weights=size_x_deltadeg --fdadrugsonly=True  --positiveonly=True  -conf=\(arth,cpd05j08,CMAP,filter\)  > ./modulation-arthritis-results-fdaonly-posonly/test-filter-arth-2021-02-01-41.txt  
python drugranking_by_direction.py --combinations=False --reuse=True  --weights=deltadeg --fdadrugsonly=True  --positiveonly=True  -conf=\(arth,cpd05j08,CMAP,filter\)  > ./modulation-arthritis-results-fdaonly-posonly/test-filter-arth-2021-02-01-42.txt  
python drugranking_by_direction.py --combinations=False --reuse=True  --weights=size_x_deltadeg --fdadrugsonly=True  --positiveonly=True  -conf=\(arth,MD,CMAP,filter\)  > ./modulation-arthritis-results-fdaonly-posonly/test-filter-arth-2021-02-01-43.txt  
python drugranking_by_direction.py --combinations=False --reuse=True  --weights=deltadeg --fdadrugsonly=True  --positiveonly=True  -conf=\(arth,MD,CMAP,filter\)  > ./modulation-arthritis-results-fdaonly-posonly/test-filter-arth-2021-02-01-44.txt  
#
echo score generation CMAP nofilter
python drugranking_by_direction.py --combinations=False --reuse=True  --weights=size_x_deltadeg --fdadrugsonly=True  --positiveonly=True  -conf=\(arth,cpd05j08,CMAP,nofilter\)  > ./modulation-arthritis-results-fdaonly-posonly/test-filter-arth-2021-02-01-51.txt  
python drugranking_by_direction.py --combinations=False --reuse=True  --weights=deltadeg --fdadrugsonly=True  --positiveonly=True  -conf=\(arth,cpd05j08,CMAP,nofilter\)  > ./modulation-arthritis-results-fdaonly-posonly/test-filter-arth-2021-02-01-52.txt  
python drugranking_by_direction.py --combinations=False --reuse=True  --weights=size_x_deltadeg --fdadrugsonly=True  --positiveonly=True  -conf=\(arth,MD,CMAP,nofilter\)  > ./modulation-arthritis-results-fdaonly-posonly/test-filter-arth-2021-02-01-53.txt  
python drugranking_by_direction.py --combinations=False --reuse=True  --weights=deltadeg --fdadrugsonly=True  --positiveonly=True  -conf=\(arth,MD,CMAP,nofilter\)  > ./modulation-arthritis-results-fdaonly-posonly/test-filter-arth-2021-02-01-54.txt  
#
echo score generation L1000 filter
python drugranking_by_direction.py --combinations=False --reuse=True  --weights=size_x_deltadeg --fdadrugsonly=True  --positiveonly=True  -conf=\(arth,cpd05j08,L1000,filter\)  > ./modulation-arthritis-results-fdaonly-posonly/test-filter-arth-2021-02-01-61.txt  
python drugranking_by_direction.py --combinations=False --reuse=True  --weights=deltadeg --fdadrugsonly=True  --positiveonly=True  -conf=\(arth,cpd05j08,L1000,filter\)  > ./modulation-arthritis-results-fdaonly-posonly/test-filter-arth-2021-02-01-62.txt  
python drugranking_by_direction.py --combinations=False --reuse=True  --weights=size_x_deltadeg --fdadrugsonly=True  --positiveonly=True  -conf=\(arth,MD,L1000,filter\)  > ./modulation-arthritis-results-fdaonly-posonly/test-filter-arth-2021-02-01-63.txt  
python drugranking_by_direction.py --combinations=False --reuse=True  --weights=deltadeg --fdadrugsonly=True  --positiveonly=True  -conf=\(arth,MD,L1000,filter\)  > ./modulation-arthritis-results-fdaonly-posonly/test-filter-arth-2021-02-01-64.txt  
#
echo score generation L1000 nofilter
python drugranking_by_direction.py --combinations=False --reuse=True  --weights=size_x_deltadeg --fdadrugsonly=True  --positiveonly=True  -conf=\(arth,cpd05j08,L1000,nofilter\)  > ./modulation-arthritis-results-fdaonly-posonly/test-filter-arth-2021-02-01-71.txt  
python drugranking_by_direction.py --combinations=False --reuse=True  --weights=deltadeg --fdadrugsonly=True  --positiveonly=True  -conf=\(arth,cpd05j08,L1000,nofilter\)  > ./modulation-arthritis-results-fdaonly-posonly/test-filter-arth-2021-02-01-72.txt  
python drugranking_by_direction.py --combinations=False --reuse=True  --weights=size_x_deltadeg --fdadrugsonly=True  --positiveonly=True  -conf=\(arth,MD,L1000,nofilter\)  > ./modulation-arthritis-results-fdaonly-posonly/test-filter-arth-2021-02-01-73.txt  
python drugranking_by_direction.py --combinations=False --reuse=True  --weights=deltadeg --fdadrugsonly=True  --positiveonly=True  -conf=\(arth,MD,L1000,nofilter\)  > ./modulation-arthritis-results-fdaonly-posonly/test-filter-arth-2021-02-01-74.txt  

