@ECHO OFF
::
ECHO score generation GEO filter
drugranking_by_direction.py --combinations=False --reuse=True  --weights=size_x_deltadeg --fdadrugsonly=False  --positiveonly=True  -conf=(arth,cpd05j08,GEO,filter)  > ./modulation-arthritis-results-nofda-posonly/test-filter-arth-2021-02-02-01.txt
drugranking_by_direction.py --combinations=False --reuse=True  --weights=deltadeg --fdadrugsonly=False  --positiveonly=True  -conf=(arth,cpd05j08,GEO,filter)  > ./modulation-arthritis-results-nofda-posonly/test-filter-arth-2021-02-02-02.txt
drugranking_by_direction.py --combinations=False --reuse=True  --weights=size_x_deltadeg --fdadrugsonly=False  --positiveonly=True  -conf=(arth,MD,GEO,filter)  > ./modulation-arthritis-results-nofda-posonly/test-filter-arth-2021-02-02-03.txt
drugranking_by_direction.py --combinations=False --reuse=True  --weights=deltadeg --fdadrugsonly=False  --positiveonly=True  -conf=(arth,MD,GEO,filter)  > ./modulation-arthritis-results-nofda-posonly/test-filter-arth-2021-02-02-04.txt
::
ECHO score generation GEO nofilter
drugranking_by_direction.py --combinations=False --reuse=True  --weights=size_x_deltadeg --fdadrugsonly=False  --positiveonly=True  -conf=(arth,cpd05j08,GEO,nofilter)  > ./modulation-arthritis-results-nofda-posonly/test-filter-arth-2021-02-02-11.txt
drugranking_by_direction.py --combinations=False --reuse=True  --weights=deltadeg --fdadrugsonly=False  --positiveonly=True  -conf=(arth,cpd05j08,GEO,nofilter)  > ./modulation-arthritis-results-nofda-posonly/test-filter-arth-2021-02-02-12.txt
drugranking_by_direction.py --combinations=False --reuse=True  --weights=size_x_deltadeg --fdadrugsonly=False  --positiveonly=True  -conf=(arth,MD,GEO,nofilter)  > ./modulation-arthritis-results-nofda-posonly/test-filter-arth-2021-02-02-13.txt
drugranking_by_direction.py --combinations=False --reuse=True  --weights=deltadeg --fdadrugsonly=False  --positiveonly=True  -conf=(arth,MD,GEO,nofilter)  > ./modulation-arthritis-results-nofda-posonly/test-filter-arth-2021-02-02-14.txt
::
ECHO score generation DM filter
drugranking_by_direction.py --combinations=False --reuse=True  --weights=size_x_deltadeg --fdadrugsonly=False  --positiveonly=True  -conf=(arth,cpd05j08,DM,filter)  > ./modulation-arthritis-results-nofda-posonly/test-filter-arth-2021-02-02-21.txt
drugranking_by_direction.py --combinations=False --reuse=True  --weights=deltadeg --fdadrugsonly=False  --positiveonly=True  -conf=(arth,cpd05j08,DM,filter)  > ./modulation-arthritis-results-nofda-posonly/test-filter-arth-2021-02-02-22.txt
drugranking_by_direction.py --combinations=False --reuse=True  --weights=size_x_deltadeg --fdadrugsonly=False  --positiveonly=True  -conf=(arth,MD,DM,filter)  > ./modulation-arthritis-results-nofda-posonly/test-filter-arth-2021-02-02-23.txt
drugranking_by_direction.py --combinations=False --reuse=True  --weights=deltadeg --fdadrugsonly=False  --positiveonly=True  -conf=(arth,MD,DM,filter)  > ./modulation-arthritis-results-nofda-posonly/test-filter-arth-2021-02-02-24.txt
::
ECHO score generation DM nofilter
drugranking_by_direction.py --combinations=False --reuse=True  --weights=size_x_deltadeg --fdadrugsonly=False  --positiveonly=True  -conf=(arth,cpd05j08,DM,nofilter)  > ./modulation-arthritis-results-nofda-posonly/test-filter-arth-2021-02-02-31.txt
drugranking_by_direction.py --combinations=False --reuse=True  --weights=deltadeg --fdadrugsonly=False  --positiveonly=True  -conf=(arth,cpd05j08,DM,nofilter)  > ./modulation-arthritis-results-nofda-posonly/test-filter-arth-2021-02-02-32.txt
drugranking_by_direction.py --combinations=False --reuse=True  --weights=size_x_deltadeg --fdadrugsonly=False  --positiveonly=True  -conf=(arth,MD,DM,nofilter)  > ./modulation-arthritis-results-nofda-posonly/test-filter-arth-2021-02-02-33.txt
drugranking_by_direction.py --combinations=False --reuse=True  --weights=deltadeg --fdadrugsonly=False  --positiveonly=True  -conf=(arth,MD,DM,nofilter)  > ./modulation-arthritis-results-nofda-posonly/test-filter-arth-2021-02-02-34.txt
::
ECHO score generation CMAP filter
drugranking_by_direction.py --combinations=False --reuse=True  --weights=size_x_deltadeg --fdadrugsonly=False  --positiveonly=True  -conf=(arth,cpd05j08,CMAP,filter)  > ./modulation-arthritis-results-nofda-posonly/test-filter-arth-2021-02-02-41.txt
drugranking_by_direction.py --combinations=False --reuse=True  --weights=deltadeg --fdadrugsonly=False  --positiveonly=True  -conf=(arth,cpd05j08,CMAP,filter)  > ./modulation-arthritis-results-nofda-posonly/test-filter-arth-2021-02-02-42.txt
drugranking_by_direction.py --combinations=False --reuse=True  --weights=size_x_deltadeg --fdadrugsonly=False  --positiveonly=True  -conf=(arth,MD,CMAP,filter)  > ./modulation-arthritis-results-nofda-posonly/test-filter-arth-2021-02-02-43.txt
drugranking_by_direction.py --combinations=False --reuse=True  --weights=deltadeg --fdadrugsonly=False  --positiveonly=True  -conf=(arth,MD,CMAP,filter)  > ./modulation-arthritis-results-nofda-posonly/test-filter-arth-2021-02-02-44.txt
::
ECHO score generation CMAP nofilter
drugranking_by_direction.py --combinations=False --reuse=True  --weights=size_x_deltadeg --fdadrugsonly=False  --positiveonly=True  -conf=(arth,cpd05j08,CMAP,nofilter)  > ./modulation-arthritis-results-nofda-posonly/test-filter-arth-2021-02-02-51.txt
drugranking_by_direction.py --combinations=False --reuse=True  --weights=deltadeg --fdadrugsonly=False  --positiveonly=True  -conf=(arth,cpd05j08,CMAP,nofilter)  > ./modulation-arthritis-results-nofda-posonly/test-filter-arth-2021-02-02-52.txt
drugranking_by_direction.py --combinations=False --reuse=True  --weights=size_x_deltadeg --fdadrugsonly=False  --positiveonly=True  -conf=(arth,MD,CMAP,nofilter)  > ./modulation-arthritis-results-nofda-posonly/test-filter-arth-2021-02-02-53.txt
drugranking_by_direction.py --combinations=False --reuse=True  --weights=deltadeg --fdadrugsonly=False  --positiveonly=True  -conf=(arth,MD,CMAP,nofilter)  > ./modulation-arthritis-results-nofda-posonly/test-filter-arth-2021-02-02-54.txt
::
ECHO score generation L1000 filter
drugranking_by_direction.py --combinations=False --reuse=True  --weights=size_x_deltadeg --fdadrugsonly=False  --positiveonly=True  -conf=(arth,cpd05j08,L1000,filter)  > ./modulation-arthritis-results-nofda-posonly/test-filter-arth-2021-02-02-61.txt
drugranking_by_direction.py --combinations=False --reuse=True  --weights=deltadeg --fdadrugsonly=False  --positiveonly=True  -conf=(arth,cpd05j08,L1000,filter)  > ./modulation-arthritis-results-nofda-posonly/test-filter-arth-2021-02-02-62.txt
drugranking_by_direction.py --combinations=False --reuse=True  --weights=size_x_deltadeg --fdadrugsonly=False  --positiveonly=True  -conf=(arth,MD,L1000,filter)  > ./modulation-arthritis-results-nofda-posonly/test-filter-arth-2021-02-02-63.txt
drugranking_by_direction.py --combinations=False --reuse=True  --weights=deltadeg --fdadrugsonly=False  --positiveonly=True  -conf=(arth,MD,L1000,filter)  > ./modulation-arthritis-results-nofda-posonly/test-filter-arth-2021-02-02-64.txt
::
ECHO score generation L1000 nofilter
drugranking_by_direction.py --combinations=False --reuse=True  --weights=size_x_deltadeg --fdadrugsonly=False  --positiveonly=True  -conf=(arth,cpd05j08,L1000,nofilter)  > ./modulation-arthritis-results-nofda-posonly/test-filter-arth-2021-02-02-71.txt
drugranking_by_direction.py --combinations=False --reuse=True  --weights=deltadeg --fdadrugsonly=False  --positiveonly=True  -conf=(arth,cpd05j08,L1000,nofilter)  > ./modulation-arthritis-results-nofda-posonly/test-filter-arth-2021-02-02-72.txt
drugranking_by_direction.py --combinations=False --reuse=True  --weights=size_x_deltadeg --fdadrugsonly=False  --positiveonly=True  -conf=(arth,MD,L1000,nofilter)  > ./modulation-arthritis-results-nofda-posonly/test-filter-arth-2021-02-02-73.txt
drugranking_by_direction.py --combinations=False --reuse=True  --weights=deltadeg --fdadrugsonly=False  --positiveonly=True  -conf=(arth,MD,L1000,nofilter)  > ./modulation-arthritis-results-nofda-posonly/test-filter-arth-2021-02-02-74.txt
PAUSE
