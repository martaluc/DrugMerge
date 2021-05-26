#!/bin/csh
#
echo score merge GEO filter
python drugranking_by_direction.py --reuseruns=True --combinations=False   --weights=size_x_deltadeg --fdadrugsonly=False  --positiveonly=True  -conf=\(arth,cpd05j08,GEO,filter\) -conf=\(arth,MD,GEO,filter\) > ./modulation-arthritis-results-nofda-posonly/merge-filter-arth-2021-02-02-01.txt  
python drugranking_by_direction.py --reuseruns=True --combinations=False   --weights=deltadeg --fdadrugsonly=False  --positiveonly=True  -conf=\(arth,cpd05j08,GEO,filter\) -conf=\(arth,MD,GEO,filter\) > ./modulation-arthritis-results-nofda-posonly/merge-filter-arth-2021-02-02-02.txt  
#
echo score ./modulation-arthritis-results-nofda-posonly/merge GEO nofilter
python drugranking_by_direction.py --reuseruns=True --combinations=False   --weights=size_x_deltadeg --fdadrugsonly=False  --positiveonly=True  -conf=\(arth,cpd05j08,GEO,nofilter\) -conf=\(arth,MD,GEO,nofilter\) > ./modulation-arthritis-results-nofda-posonly/merge-filter-arth-2021-02-02-11.txt  
python drugranking_by_direction.py --reuseruns=True --combinations=False   --weights=deltadeg --fdadrugsonly=False  --positiveonly=True  -conf=\(arth,cpd05j08,GEO,nofilter\) -conf=\(arth,MD,GEO,nofilter\) > ./modulation-arthritis-results-nofda-posonly/merge-filter-arth-2021-02-02-12.txt  
#
echo score ./modulation-arthritis-results-nofda-posonly/merge DM filter
python drugranking_by_direction.py --reuseruns=True --combinations=False   --weights=size_x_deltadeg --fdadrugsonly=False  --positiveonly=True  -conf=\(arth,cpd05j08,DM,filter\) -conf=\(arth,MD,DM,filter\) > ./modulation-arthritis-results-nofda-posonly/merge-filter-arth-2021-02-02-21.txt  
python drugranking_by_direction.py --reuseruns=True --combinations=False   --weights=deltadeg --fdadrugsonly=False  --positiveonly=True  -conf=\(arth,cpd05j08,DM,filter\) -conf=\(arth,MD,DM,filter\) > ./modulation-arthritis-results-nofda-posonly/merge-filter-arth-2021-02-02-22.txt  
#
echo score ./modulation-arthritis-results-nofda-posonly/merge DM nofilter
python drugranking_by_direction.py --reuseruns=True --combinations=False   --weights=size_x_deltadeg --fdadrugsonly=False  --positiveonly=True  -conf=\(arth,cpd05j08,DM,nofilter\) -conf=\(arth,MD,DM,nofilter\) > ./modulation-arthritis-results-nofda-posonly/merge-filter-arth-2021-02-02-31.txt  
python drugranking_by_direction.py --reuseruns=True --combinations=False   --weights=deltadeg --fdadrugsonly=False  --positiveonly=True  -conf=\(arth,cpd05j08,DM,nofilter\) -conf=\(arth,MD,DM,nofilter\) > ./modulation-arthritis-results-nofda-posonly/merge-filter-arth-2021-02-02-32.txt  
#
echo score ./modulation-arthritis-results-nofda-posonly/merge CMAP filter
python drugranking_by_direction.py --reuseruns=True --combinations=False   --weights=size_x_deltadeg --fdadrugsonly=False  --positiveonly=True  -conf=\(arth,cpd05j08,CMAP,filter\) -conf=\(arth,MD,CMAP,filter\) > ./modulation-arthritis-results-nofda-posonly/merge-filter-arth-2021-02-02-41.txt  
python drugranking_by_direction.py --reuseruns=True --combinations=False   --weights=deltadeg --fdadrugsonly=False  --positiveonly=True  -conf=\(arth,cpd05j08,CMAP,filter\) -conf=\(arth,MD,CMAP,filter\) > ./modulation-arthritis-results-nofda-posonly/merge-filter-arth-2021-02-02-42.txt  
#
echo score ./modulation-arthritis-results-nofda-posonly/merge CMAP nofilter
python drugranking_by_direction.py --reuseruns=True --combinations=False   --weights=size_x_deltadeg --fdadrugsonly=False  --positiveonly=True  -conf=\(arth,cpd05j08,CMAP,nofilter\) -conf=\(arth,MD,CMAP,nofilter\) > ./modulation-arthritis-results-nofda-posonly/merge-filter-arth-2021-02-02-51.txt  
python drugranking_by_direction.py --reuseruns=True --combinations=False   --weights=deltadeg --fdadrugsonly=False  --positiveonly=True  -conf=\(arth,cpd05j08,CMAP,nofilter\) -conf=\(arth,MD,CMAP,nofilter\) > ./modulation-arthritis-results-nofda-posonly/merge-filter-arth-2021-02-02-52.txt  
#
echo score ./modulation-arthritis-results-nofda-posonly/merge L1000 filter
python drugranking_by_direction.py --reuseruns=True --combinations=False   --weights=size_x_deltadeg --fdadrugsonly=False  --positiveonly=True  -conf=\(arth,cpd05j08,L1000,filter\) -conf=\(arth,MD,L1000,filter\) > ./modulation-arthritis-results-nofda-posonly/merge-filter-arth-2021-02-02-61.txt  
python drugranking_by_direction.py --reuseruns=True --combinations=False   --weights=deltadeg --fdadrugsonly=False  --positiveonly=True  -conf=\(arth,cpd05j08,L1000,filter\) -conf=\(arth,MD,L1000,filter\) > ./modulation-arthritis-results-nofda-posonly/merge-filter-arth-2021-02-02-62.txt  
#
echo score ./modulation-arthritis-results-nofda-posonly/merge L1000 nofilter
python drugranking_by_direction.py --reuseruns=True --combinations=False   --weights=size_x_deltadeg --fdadrugsonly=False  --positiveonly=True  -conf=\(arth,cpd05j08,L1000,nofilter\) -conf=\(arth,MD,L1000,nofilter\) > ./modulation-arthritis-results-nofda-posonly/merge-filter-arth-2021-02-02-71.txt  
python drugranking_by_direction.py --reuseruns=True --combinations=False   --weights=deltadeg --fdadrugsonly=False  --positiveonly=True  -conf=\(arth,cpd05j08,L1000,nofilter\) -conf=\(arth,MD,L1000,nofilter\) > ./modulation-arthritis-results-nofda-posonly/merge-filter-arth-2021-02-02-72.txt  





