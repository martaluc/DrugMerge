@ECHO OFF
::
ECHO score generation GEO filter
drugranking_by_direction.py --combinations=False --reuse=True  --weights=size_x_deltadeg --fdadrugsonly=True  --positiveonly=True  -conf=(arth,cpd05j08,GEO,filter)  > ./modulation-arthritis-results-fdaonly-posonly/test-filter-arth-2021-02-01-01.txt
drugranking_by_direction.py --combinations=False --reuse=True  --weights=deltadeg --fdadrugsonly=True  --positiveonly=True  -conf=(arth,cpd05j08,GEO,filter)  > ./modulation-arthritis-results-fdaonly-posonly/test-filter-arth-2021-02-01-02.txt
drugranking_by_direction.py --combinations=False --reuse=True  --weights=size_x_deltadeg --fdadrugsonly=True  --positiveonly=True  -conf=(arth,MD,GEO,filter)  > ./modulation-arthritis-results-fdaonly-posonly/test-filter-arth-2021-02-01-03.txt
drugranking_by_direction.py --combinations=False --reuse=True  --weights=deltadeg --fdadrugsonly=True  --positiveonly=True  -conf=(arth,MD,GEO,filter)  > ./modulation-arthritis-results-fdaonly-posonly/test-filter-arth-2021-02-01-04.txt
::
ECHO score generation GEO nofilter
drugranking_by_direction.py --combinations=False --reuse=True  --weights=size_x_deltadeg --fdadrugsonly=True  --positiveonly=True  -conf=(arth,cpd05j08,GEO,nofilter)  > ./modulation-arthritis-results-fdaonly-posonly/test-filter-arth-2021-02-01-11.txt
drugranking_by_direction.py --combinations=False --reuse=True  --weights=deltadeg --fdadrugsonly=True  --positiveonly=True  -conf=(arth,cpd05j08,GEO,nofilter)  > ./modulation-arthritis-results-fdaonly-posonly/test-filter-arth-2021-02-01-12.txt
drugranking_by_direction.py --combinations=False --reuse=True  --weights=size_x_deltadeg --fdadrugsonly=True  --positiveonly=True  -conf=(arth,MD,GEO,nofilter)  > ./modulation-arthritis-results-fdaonly-posonly/test-filter-arth-2021-02-01-13.txt
drugranking_by_direction.py --combinations=False --reuse=True  --weights=deltadeg --fdadrugsonly=True  --positiveonly=True  -conf=(arth,MD,GEO,nofilter)  > ./modulation-arthritis-results-fdaonly-posonly/test-filter-arth-2021-02-01-14.txt
::
ECHO score generation DM filter
drugranking_by_direction.py --combinations=False --reuse=True  --weights=size_x_deltadeg --fdadrugsonly=True  --positiveonly=True  -conf=(arth,cpd05j08,DM,filter)  > ./modulation-arthritis-results-fdaonly-posonly/test-filter-arth-2021-02-01-21.txt
drugranking_by_direction.py --combinations=False --reuse=True  --weights=deltadeg --fdadrugsonly=True  --positiveonly=True  -conf=(arth,cpd05j08,DM,filter)  > ./modulation-arthritis-results-fdaonly-posonly/test-filter-arth-2021-02-01-22.txt
drugranking_by_direction.py --combinations=False --reuse=True  --weights=size_x_deltadeg --fdadrugsonly=True  --positiveonly=True  -conf=(arth,MD,DM,filter)  > ./modulation-arthritis-results-fdaonly-posonly/test-filter-arth-2021-02-01-23.txt
drugranking_by_direction.py --combinations=False --reuse=True  --weights=deltadeg --fdadrugsonly=True  --positiveonly=True  -conf=(arth,MD,DM,filter)  > ./modulation-arthritis-results-fdaonly-posonly/test-filter-arth-2021-02-01-24.txt
::
ECHO score generation DM nofilter
drugranking_by_direction.py --combinations=False --reuse=True  --weights=size_x_deltadeg --fdadrugsonly=True  --positiveonly=True  -conf=(arth,cpd05j08,DM,nofilter)  > ./modulation-arthritis-results-fdaonly-posonly/test-filter-arth-2021-02-01-31.txt
drugranking_by_direction.py --combinations=False --reuse=True  --weights=deltadeg --fdadrugsonly=True  --positiveonly=True  -conf=(arth,cpd05j08,DM,nofilter)  > ./modulation-arthritis-results-fdaonly-posonly/test-filter-arth-2021-02-01-32.txt
drugranking_by_direction.py --combinations=False --reuse=True  --weights=size_x_deltadeg --fdadrugsonly=True  --positiveonly=True  -conf=(arth,MD,DM,nofilter)  > ./modulation-arthritis-results-fdaonly-posonly/test-filter-arth-2021-02-01-33.txt
drugranking_by_direction.py --combinations=False --reuse=True  --weights=deltadeg --fdadrugsonly=True  --positiveonly=True  -conf=(arth,MD,DM,nofilter)  > ./modulation-arthritis-results-fdaonly-posonly/test-filter-arth-2021-02-01-34.txt
::
ECHO score generation CMAP filter
drugranking_by_direction.py --combinations=False --reuse=True  --weights=size_x_deltadeg --fdadrugsonly=True  --positiveonly=True  -conf=(arth,cpd05j08,CMAP,filter)  > ./modulation-arthritis-results-fdaonly-posonly/test-filter-arth-2021-02-01-41.txt
drugranking_by_direction.py --combinations=False --reuse=True  --weights=deltadeg --fdadrugsonly=True  --positiveonly=True  -conf=(arth,cpd05j08,CMAP,filter)  > ./modulation-arthritis-results-fdaonly-posonly/test-filter-arth-2021-02-01-42.txt
drugranking_by_direction.py --combinations=False --reuse=True  --weights=size_x_deltadeg --fdadrugsonly=True  --positiveonly=True  -conf=(arth,MD,CMAP,filter)  > ./modulation-arthritis-results-fdaonly-posonly/test-filter-arth-2021-02-01-43.txt
drugranking_by_direction.py --combinations=False --reuse=True  --weights=deltadeg --fdadrugsonly=True  --positiveonly=True  -conf=(arth,MD,CMAP,filter)  > ./modulation-arthritis-results-fdaonly-posonly/test-filter-arth-2021-02-01-44.txt
::
ECHO score generation CMAP nofilter
drugranking_by_direction.py --combinations=False --reuse=True  --weights=size_x_deltadeg --fdadrugsonly=True  --positiveonly=True  -conf=(arth,cpd05j08,CMAP,nofilter)  > ./modulation-arthritis-results-fdaonly-posonly/test-filter-arth-2021-02-01-51.txt
drugranking_by_direction.py --combinations=False --reuse=True  --weights=deltadeg --fdadrugsonly=True  --positiveonly=True  -conf=(arth,cpd05j08,CMAP,nofilter)  > ./modulation-arthritis-results-fdaonly-posonly/test-filter-arth-2021-02-01-52.txt
drugranking_by_direction.py --combinations=False --reuse=True  --weights=size_x_deltadeg --fdadrugsonly=True  --positiveonly=True  -conf=(arth,MD,CMAP,nofilter)  > ./modulation-arthritis-results-fdaonly-posonly/test-filter-arth-2021-02-01-53.txt
drugranking_by_direction.py --combinations=False --reuse=True  --weights=deltadeg --fdadrugsonly=True  --positiveonly=True  -conf=(arth,MD,CMAP,nofilter)  > ./modulation-arthritis-results-fdaonly-posonly/test-filter-arth-2021-02-01-54.txt
::
ECHO score generation L1000 filter
drugranking_by_direction.py --combinations=False --reuse=True  --weights=size_x_deltadeg --fdadrugsonly=True  --positiveonly=True  -conf=(arth,cpd05j08,L1000,filter)  > ./modulation-arthritis-results-fdaonly-posonly/test-filter-arth-2021-02-01-61.txt
drugranking_by_direction.py --combinations=False --reuse=True  --weights=deltadeg --fdadrugsonly=True  --positiveonly=True  -conf=(arth,cpd05j08,L1000,filter)  > ./modulation-arthritis-results-fdaonly-posonly/test-filter-arth-2021-02-01-62.txt
drugranking_by_direction.py --combinations=False --reuse=True  --weights=size_x_deltadeg --fdadrugsonly=True  --positiveonly=True  -conf=(arth,MD,L1000,filter)  > ./modulation-arthritis-results-fdaonly-posonly/test-filter-arth-2021-02-01-63.txt
drugranking_by_direction.py --combinations=False --reuse=True  --weights=deltadeg --fdadrugsonly=True  --positiveonly=True  -conf=(arth,MD,L1000,filter)  > ./modulation-arthritis-results-fdaonly-posonly/test-filter-arth-2021-02-01-64.txt
::
ECHO score generation L1000 nofilter
drugranking_by_direction.py --combinations=False --reuse=True  --weights=size_x_deltadeg --fdadrugsonly=True  --positiveonly=True  -conf=(arth,cpd05j08,L1000,nofilter)  > ./modulation-arthritis-results-fdaonly-posonly/test-filter-arth-2021-02-01-71.txt
drugranking_by_direction.py --combinations=False --reuse=True  --weights=deltadeg --fdadrugsonly=True  --positiveonly=True  -conf=(arth,cpd05j08,L1000,nofilter)  > ./modulation-arthritis-results-fdaonly-posonly/test-filter-arth-2021-02-01-72.txt
drugranking_by_direction.py --combinations=False --reuse=True  --weights=size_x_deltadeg --fdadrugsonly=True  --positiveonly=True  -conf=(arth,MD,L1000,nofilter)  > ./modulation-arthritis-results-fdaonly-posonly/test-filter-arth-2021-02-01-73.txt
drugranking_by_direction.py --combinations=False --reuse=True  --weights=deltadeg --fdadrugsonly=True  --positiveonly=True  -conf=(arth,MD,L1000,nofilter)  > ./modulation-arthritis-results-fdaonly-posonly/test-filter-arth-2021-02-01-74.txt
PAUSE
