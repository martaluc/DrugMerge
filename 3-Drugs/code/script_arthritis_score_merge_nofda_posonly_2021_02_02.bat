@ECHO OFF
::
ECHO score merge GEO filter
drugranking_by_direction.py --reuseruns=True --combinations=False   --weights=size_x_deltadeg --fdadrugsonly=False  --positiveonly=True  -conf=(arth,cpd05j08,GEO,filter) -conf=(arth,MD,GEO,filter) > ./modulation-arthritis-results-nofda-posonly/merge-filter-arth-2021-02-02-01.txt
drugranking_by_direction.py --reuseruns=True --combinations=False   --weights=deltadeg --fdadrugsonly=False  --positiveonly=True  -conf=(arth,cpd05j08,GEO,filter) -conf=(arth,MD,GEO,filter) > ./modulation-arthritis-results-nofda-posonly/merge-filter-arth-2021-02-02-02.txt
::
ECHO score ./modulation-arthritis-results-nofda-posonly/merge GEO nofilter
drugranking_by_direction.py --reuseruns=True --combinations=False   --weights=size_x_deltadeg --fdadrugsonly=False  --positiveonly=True  -conf=(arth,cpd05j08,GEO,nofilter) -conf=(arth,MD,GEO,nofilter) > ./modulation-arthritis-results-nofda-posonly/merge-filter-arth-2021-02-02-11.txt
drugranking_by_direction.py --reuseruns=True --combinations=False   --weights=deltadeg --fdadrugsonly=False  --positiveonly=True  -conf=(arth,cpd05j08,GEO,nofilter) -conf=(arth,MD,GEO,nofilter) > ./modulation-arthritis-results-nofda-posonly/merge-filter-arth-2021-02-02-12.txt
::
ECHO score ./modulation-arthritis-results-nofda-posonly/merge DM filter
drugranking_by_direction.py --reuseruns=True --combinations=False   --weights=size_x_deltadeg --fdadrugsonly=False  --positiveonly=True  -conf=(arth,cpd05j08,DM,filter) -conf=(arth,MD,DM,filter) > ./modulation-arthritis-results-nofda-posonly/merge-filter-arth-2021-02-02-21.txt
drugranking_by_direction.py --reuseruns=True --combinations=False   --weights=deltadeg --fdadrugsonly=False  --positiveonly=True  -conf=(arth,cpd05j08,DM,filter) -conf=(arth,MD,DM,filter) > ./modulation-arthritis-results-nofda-posonly/merge-filter-arth-2021-02-02-22.txt
::
ECHO score ./modulation-arthritis-results-nofda-posonly/merge DM nofilter
drugranking_by_direction.py --reuseruns=True --combinations=False   --weights=size_x_deltadeg --fdadrugsonly=False  --positiveonly=True  -conf=(arth,cpd05j08,DM,nofilter) -conf=(arth,MD,DM,nofilter) > ./modulation-arthritis-results-nofda-posonly/merge-filter-arth-2021-02-02-31.txt
drugranking_by_direction.py --reuseruns=True --combinations=False   --weights=deltadeg --fdadrugsonly=False  --positiveonly=True  -conf=(arth,cpd05j08,DM,nofilter) -conf=(arth,MD,DM,nofilter) > ./modulation-arthritis-results-nofda-posonly/merge-filter-arth-2021-02-02-32.txt
::
ECHO score ./modulation-arthritis-results-nofda-posonly/merge CMAP filter
drugranking_by_direction.py --reuseruns=True --combinations=False   --weights=size_x_deltadeg --fdadrugsonly=False  --positiveonly=True  -conf=(arth,cpd05j08,CMAP,filter) -conf=(arth,MD,CMAP,filter) > ./modulation-arthritis-results-nofda-posonly/merge-filter-arth-2021-02-02-41.txt
drugranking_by_direction.py --reuseruns=True --combinations=False   --weights=deltadeg --fdadrugsonly=False  --positiveonly=True  -conf=(arth,cpd05j08,CMAP,filter) -conf=(arth,MD,CMAP,filter) > ./modulation-arthritis-results-nofda-posonly/merge-filter-arth-2021-02-02-42.txt
::
ECHO score ./modulation-arthritis-results-nofda-posonly/merge CMAP nofilter
drugranking_by_direction.py --reuseruns=True --combinations=False   --weights=size_x_deltadeg --fdadrugsonly=False  --positiveonly=True  -conf=(arth,cpd05j08,CMAP,nofilter) -conf=(arth,MD,CMAP,nofilter) > ./modulation-arthritis-results-nofda-posonly/merge-filter-arth-2021-02-02-51.txt
drugranking_by_direction.py --reuseruns=True --combinations=False   --weights=deltadeg --fdadrugsonly=False  --positiveonly=True  -conf=(arth,cpd05j08,CMAP,nofilter) -conf=(arth,MD,CMAP,nofilter) > ./modulation-arthritis-results-nofda-posonly/merge-filter-arth-2021-02-02-52.txt
::
ECHO score ./modulation-arthritis-results-nofda-posonly/merge L1000 filter
drugranking_by_direction.py --reuseruns=True --combinations=False   --weights=size_x_deltadeg --fdadrugsonly=False  --positiveonly=True  -conf=(arth,cpd05j08,L1000,filter) -conf=(arth,MD,L1000,filter) > ./modulation-arthritis-results-nofda-posonly/merge-filter-arth-2021-02-02-61.txt
drugranking_by_direction.py --reuseruns=True --combinations=False   --weights=deltadeg --fdadrugsonly=False  --positiveonly=True  -conf=(arth,cpd05j08,L1000,filter) -conf=(arth,MD,L1000,filter) > ./modulation-arthritis-results-nofda-posonly/merge-filter-arth-2021-02-02-62.txt
::
ECHO score ./modulation-arthritis-results-nofda-posonly/merge L1000 nofilter
drugranking_by_direction.py --reuseruns=True --combinations=False   --weights=size_x_deltadeg --fdadrugsonly=False  --positiveonly=True  -conf=(arth,cpd05j08,L1000,nofilter) -conf=(arth,MD,L1000,nofilter) > ./modulation-arthritis-results-nofda-posonly/merge-filter-arth-2021-02-02-71.txt
drugranking_by_direction.py --reuseruns=True --combinations=False   --weights=deltadeg --fdadrugsonly=False  --positiveonly=True  -conf=(arth,cpd05j08,L1000,nofilter) -conf=(arth,MD,L1000,nofilter) > ./modulation-arthritis-results-nofda-posonly/merge-filter-arth-2021-02-02-72.txt




PAUSE
