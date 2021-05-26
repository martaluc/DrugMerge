#!/bin/csh
#
echo score generation GEO filter
python drugranking_by_direction.py --combinations=False --reuse=True  --weights=size_x_deltadeg --fdadrugsonly=False  --positiveonly=True  -conf=\(arth,cpd05j08,GEO,filter\)  > ./modulation-arthritis-results-nofda-posonly/test-filter-arth-2021-02-02-01.txt  
python drugranking_by_direction.py --combinations=False --reuse=True  --weights=deltadeg --fdadrugsonly=False  --positiveonly=True  -conf=\(arth,cpd05j08,GEO,filter\)  > ./modulation-arthritis-results-nofda-posonly/test-filter-arth-2021-02-02-02.txt  
python drugranking_by_direction.py --combinations=False --reuse=True  --weights=size_x_deltadeg --fdadrugsonly=False  --positiveonly=True  -conf=\(arth,MD,GEO,filter\)  > ./modulation-arthritis-results-nofda-posonly/test-filter-arth-2021-02-02-03.txt  
python drugranking_by_direction.py --combinations=False --reuse=True  --weights=deltadeg --fdadrugsonly=False  --positiveonly=True  -conf=\(arth,MD,GEO,filter\)  > ./modulation-arthritis-results-nofda-posonly/test-filter-arth-2021-02-02-04.txt  
#
echo score generation GEO nofilter
python drugranking_by_direction.py --combinations=False --reuse=True  --weights=size_x_deltadeg --fdadrugsonly=False  --positiveonly=True  -conf=\(arth,cpd05j08,GEO,nofilter\)  > ./modulation-arthritis-results-nofda-posonly/test-filter-arth-2021-02-02-11.txt  
python drugranking_by_direction.py --combinations=False --reuse=True  --weights=deltadeg --fdadrugsonly=False  --positiveonly=True  -conf=\(arth,cpd05j08,GEO,nofilter\)  > ./modulation-arthritis-results-nofda-posonly/test-filter-arth-2021-02-02-12.txt  
python drugranking_by_direction.py --combinations=False --reuse=True  --weights=size_x_deltadeg --fdadrugsonly=False  --positiveonly=True  -conf=\(arth,MD,GEO,nofilter\)  > ./modulation-arthritis-results-nofda-posonly/test-filter-arth-2021-02-02-13.txt  
python drugranking_by_direction.py --combinations=False --reuse=True  --weights=deltadeg --fdadrugsonly=False  --positiveonly=True  -conf=\(arth,MD,GEO,nofilter\)  > ./modulation-arthritis-results-nofda-posonly/test-filter-arth-2021-02-02-14.txt  
#
echo score generation DM filter
python drugranking_by_direction.py --combinations=False --reuse=True  --weights=size_x_deltadeg --fdadrugsonly=False  --positiveonly=True  -conf=\(arth,cpd05j08,DM,filter\)  > ./modulation-arthritis-results-nofda-posonly/test-filter-arth-2021-02-02-21.txt  
python drugranking_by_direction.py --combinations=False --reuse=True  --weights=deltadeg --fdadrugsonly=False  --positiveonly=True  -conf=\(arth,cpd05j08,DM,filter\)  > ./modulation-arthritis-results-nofda-posonly/test-filter-arth-2021-02-02-22.txt  
python drugranking_by_direction.py --combinations=False --reuse=True  --weights=size_x_deltadeg --fdadrugsonly=False  --positiveonly=True  -conf=\(arth,MD,DM,filter\)  > ./modulation-arthritis-results-nofda-posonly/test-filter-arth-2021-02-02-23.txt  
python drugranking_by_direction.py --combinations=False --reuse=True  --weights=deltadeg --fdadrugsonly=False  --positiveonly=True  -conf=\(arth,MD,DM,filter\)  > ./modulation-arthritis-results-nofda-posonly/test-filter-arth-2021-02-02-24.txt  
#
echo score generation DM nofilter
python drugranking_by_direction.py --combinations=False --reuse=True  --weights=size_x_deltadeg --fdadrugsonly=False  --positiveonly=True  -conf=\(arth,cpd05j08,DM,nofilter\)  > ./modulation-arthritis-results-nofda-posonly/test-filter-arth-2021-02-02-31.txt  
python drugranking_by_direction.py --combinations=False --reuse=True  --weights=deltadeg --fdadrugsonly=False  --positiveonly=True  -conf=\(arth,cpd05j08,DM,nofilter\)  > ./modulation-arthritis-results-nofda-posonly/test-filter-arth-2021-02-02-32.txt  
python drugranking_by_direction.py --combinations=False --reuse=True  --weights=size_x_deltadeg --fdadrugsonly=False  --positiveonly=True  -conf=\(arth,MD,DM,nofilter\)  > ./modulation-arthritis-results-nofda-posonly/test-filter-arth-2021-02-02-33.txt  
python drugranking_by_direction.py --combinations=False --reuse=True  --weights=deltadeg --fdadrugsonly=False  --positiveonly=True  -conf=\(arth,MD,DM,nofilter\)  > ./modulation-arthritis-results-nofda-posonly/test-filter-arth-2021-02-02-34.txt  
#
echo score generation CMAP filter
python drugranking_by_direction.py --combinations=False --reuse=True  --weights=size_x_deltadeg --fdadrugsonly=False  --positiveonly=True  -conf=\(arth,cpd05j08,CMAP,filter\)  > ./modulation-arthritis-results-nofda-posonly/test-filter-arth-2021-02-02-41.txt  
python drugranking_by_direction.py --combinations=False --reuse=True  --weights=deltadeg --fdadrugsonly=False  --positiveonly=True  -conf=\(arth,cpd05j08,CMAP,filter\)  > ./modulation-arthritis-results-nofda-posonly/test-filter-arth-2021-02-02-42.txt  
python drugranking_by_direction.py --combinations=False --reuse=True  --weights=size_x_deltadeg --fdadrugsonly=False  --positiveonly=True  -conf=\(arth,MD,CMAP,filter\)  > ./modulation-arthritis-results-nofda-posonly/test-filter-arth-2021-02-02-43.txt  
python drugranking_by_direction.py --combinations=False --reuse=True  --weights=deltadeg --fdadrugsonly=False  --positiveonly=True  -conf=\(arth,MD,CMAP,filter\)  > ./modulation-arthritis-results-nofda-posonly/test-filter-arth-2021-02-02-44.txt  
#
echo score generation CMAP nofilter
python drugranking_by_direction.py --combinations=False --reuse=True  --weights=size_x_deltadeg --fdadrugsonly=False  --positiveonly=True  -conf=\(arth,cpd05j08,CMAP,nofilter\)  > ./modulation-arthritis-results-nofda-posonly/test-filter-arth-2021-02-02-51.txt  
python drugranking_by_direction.py --combinations=False --reuse=True  --weights=deltadeg --fdadrugsonly=False  --positiveonly=True  -conf=\(arth,cpd05j08,CMAP,nofilter\)  > ./modulation-arthritis-results-nofda-posonly/test-filter-arth-2021-02-02-52.txt  
python drugranking_by_direction.py --combinations=False --reuse=True  --weights=size_x_deltadeg --fdadrugsonly=False  --positiveonly=True  -conf=\(arth,MD,CMAP,nofilter\)  > ./modulation-arthritis-results-nofda-posonly/test-filter-arth-2021-02-02-53.txt  
python drugranking_by_direction.py --combinations=False --reuse=True  --weights=deltadeg --fdadrugsonly=False  --positiveonly=True  -conf=\(arth,MD,CMAP,nofilter\)  > ./modulation-arthritis-results-nofda-posonly/test-filter-arth-2021-02-02-54.txt  
#
echo score generation L1000 filter
python drugranking_by_direction.py --combinations=False --reuse=True  --weights=size_x_deltadeg --fdadrugsonly=False  --positiveonly=True  -conf=\(arth,cpd05j08,L1000,filter\)  > ./modulation-arthritis-results-nofda-posonly/test-filter-arth-2021-02-02-61.txt  
python drugranking_by_direction.py --combinations=False --reuse=True  --weights=deltadeg --fdadrugsonly=False  --positiveonly=True  -conf=\(arth,cpd05j08,L1000,filter\)  > ./modulation-arthritis-results-nofda-posonly/test-filter-arth-2021-02-02-62.txt  
python drugranking_by_direction.py --combinations=False --reuse=True  --weights=size_x_deltadeg --fdadrugsonly=False  --positiveonly=True  -conf=\(arth,MD,L1000,filter\)  > ./modulation-arthritis-results-nofda-posonly/test-filter-arth-2021-02-02-63.txt  
python drugranking_by_direction.py --combinations=False --reuse=True  --weights=deltadeg --fdadrugsonly=False  --positiveonly=True  -conf=\(arth,MD,L1000,filter\)  > ./modulation-arthritis-results-nofda-posonly/test-filter-arth-2021-02-02-64.txt  
#
echo score generation L1000 nofilter
python drugranking_by_direction.py --combinations=False --reuse=True  --weights=size_x_deltadeg --fdadrugsonly=False  --positiveonly=True  -conf=\(arth,cpd05j08,L1000,nofilter\)  > ./modulation-arthritis-results-nofda-posonly/test-filter-arth-2021-02-02-71.txt  
python drugranking_by_direction.py --combinations=False --reuse=True  --weights=deltadeg --fdadrugsonly=False  --positiveonly=True  -conf=\(arth,cpd05j08,L1000,nofilter\)  > ./modulation-arthritis-results-nofda-posonly/test-filter-arth-2021-02-02-72.txt  
python drugranking_by_direction.py --combinations=False --reuse=True  --weights=size_x_deltadeg --fdadrugsonly=False  --positiveonly=True  -conf=\(arth,MD,L1000,nofilter\)  > ./modulation-arthritis-results-nofda-posonly/test-filter-arth-2021-02-02-73.txt  
python drugranking_by_direction.py --combinations=False --reuse=True  --weights=deltadeg --fdadrugsonly=False  --positiveonly=True  -conf=\(arth,MD,L1000,nofilter\)  > ./modulation-arthritis-results-nofda-posonly/test-filter-arth-2021-02-02-74.txt  

