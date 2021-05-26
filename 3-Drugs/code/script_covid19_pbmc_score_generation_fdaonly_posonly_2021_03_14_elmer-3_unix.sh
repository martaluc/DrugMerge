#!/bin/csh

#L1000 runs

#cp05j08

python drugranking_by_direction.py --combinations=False --reuse=False  --weights=size_x_deltadeg --fdadrugsonly=True  --positiveonly=True  -conf=\(pbmc,cpd05j08,L1000,nofilter\)  > ./modulation-covid19-pbmc-results-score-fdaonly-posonly/test-filter-pbmc-2021-03-14-01.txt 

python drugranking_by_direction.py --combinations=False --reuse=False  --weights=size_x_deltadeg --fdadrugsonly=True  --positiveonly=True  -conf=\(pbmc,cpd05j08,L1000,filter\)  > ./modulation-covid19-pbmc-results-score-fdaonly-posonly/test-filter-pbmc-2021-03-14-02.txt 

python drugranking_by_direction.py --combinations=False --reuse=False  --weights=deltadeg --fdadrugsonly=True  --positiveonly=True  -conf=\(pbmc,cpd05j08,L1000,nofilter\)  > ./modulation-covid19-pbmc-results-score-fdaonly-posonly/test-filter-pbmc-2021-03-14-03.txt 

python drugranking_by_direction.py --combinations=False --reuse=False  --weights=deltadeg --fdadrugsonly=True  --positiveonly=True  -conf=\(pbmc,cpd05j08,L1000,filter\)  > ./modulation-covid19-pbmc-results-score-fdaonly-posonly/test-filter-pbmc-2021-03-14-04.txt 



#cp07j08

python drugranking_by_direction.py --combinations=False --reuse=False  --weights=size_x_deltadeg --fdadrugsonly=True  --positiveonly=True  -conf=\(pbmc,cpd07j08,L1000,nofilter\)  > ./modulation-covid19-pbmc-results-score-fdaonly-posonly/test-filter-pbmc-2021-03-14-05.txt 

python drugranking_by_direction.py --combinations=False --reuse=False  --weights=size_x_deltadeg --fdadrugsonly=True  --positiveonly=True  -conf=\(pbmc,cpd07j08,L1000,filter\)  > ./modulation-covid19-pbmc-results-score-fdaonly-posonly/test-filter-pbmc-2021-03-14-06.txt 

python drugranking_by_direction.py --combinations=False --reuse=False  --weights=deltadeg --fdadrugsonly=True  --positiveonly=True  -conf=\(pbmc,cpd07j08,L1000,nofilter\)  > ./modulation-covid19-pbmc-results-score-fdaonly-posonly/test-filter-pbmc-2021-03-14-07.txt 

python drugranking_by_direction.py --combinations=False --reuse=False  --weights=deltadeg --fdadrugsonly=True  --positiveonly=True  -conf=\(pbmc,cpd07j08,L1000,filter\)  > ./modulation-covid19-pbmc-results-score-fdaonly-posonly/test-filter-pbmc-2021-03-14-08.txt 

#MD

python drugranking_by_direction.py --combinations=False --reuse=False  --weights=size_x_deltadeg --fdadrugsonly=True  --positiveonly=True  -conf=\(pbmc,MD,L1000,nofilter\)  > ./modulation-covid19-pbmc-results-score-fdaonly-posonly/test-filter-pbmc-2021-03-14-09.txt 

python drugranking_by_direction.py --combinations=False --reuse=False  --weights=size_x_deltadeg --fdadrugsonly=True  --positiveonly=True  -conf=\(pbmc,MD,L1000,filter\)  > ./modulation-covid19-pbmc-results-score-fdaonly-posonly/test-filter-pbmc-2021-03-14-10.txt 

python drugranking_by_direction.py --combinations=False --reuse=False  --weights=deltadeg --fdadrugsonly=True  --positiveonly=True  -conf=\(pbmc,MD,L1000,nofilter\)  > ./modulation-covid19-pbmc-results-score-fdaonly-posonly/test-filter-pbmc-2021-03-14-11.txt 

python drugranking_by_direction.py --combinations=False --reuse=False  --weights=deltadeg --fdadrugsonly=True  --positiveonly=True  -conf=\(pbmc,MD,L1000,filter\)  > ./modulation-covid19-pbmc-results-score-fdaonly-posonly/test-filter-pbmc-2021-03-14-12.txt 


#cmap runs

#md

python drugranking_by_direction.py --combinations=False --reuse=False  --weights=size_x_deltadeg --fdadrugsonly=True  --positiveonly=True  -conf=\(pbmc,MD,CMAP,nofilter\)  > ./modulation-covid19-pbmc-results-score-fdaonly-posonly/test-filter-pbmc-2021-03-14-13.txt 

python drugranking_by_direction.py --combinations=False --reuse=False  --weights=size_x_deltadeg --fdadrugsonly=True  --positiveonly=True  -conf=\(pbmc,MD,CMAP,filter\)  > ./modulation-covid19-pbmc-results-score-fdaonly-posonly/test-filter-pbmc-2021-03-14-14.txt 

python drugranking_by_direction.py --combinations=False --reuse=False  --weights=deltadeg --fdadrugsonly=True  --positiveonly=True  -conf=\(pbmc,MD,CMAP,nofilter\)  > ./modulation-covid19-pbmc-results-score-fdaonly-posonly/test-filter-pbmc-2021-03-14-15.txt 

python drugranking_by_direction.py --combinations=False --reuse=False  --weights=deltadeg --fdadrugsonly=True  --positiveonly=True  -conf=\(pbmc,MD,CMAP,filter\)  > ./modulation-covid19-pbmc-results-score-fdaonly-posonly/test-filter-pbmc-2021-03-14-16.txt 

#cp07j08

python drugranking_by_direction.py --combinations=False --reuse=False  --weights=size_x_deltadeg --fdadrugsonly=True  --positiveonly=True  -conf=\(pbmc,cpd07j08,CMAP,nofilter\)  > ./modulation-covid19-pbmc-results-score-fdaonly-posonly/test-filter-pbmc-2021-03-14-17.txt 

python drugranking_by_direction.py --combinations=False --reuse=False  --weights=size_x_deltadeg --fdadrugsonly=True  --positiveonly=True  -conf=\(pbmc,cpd07j08,CMAP,filter\)  > ./modulation-covid19-pbmc-results-score-fdaonly-posonly/test-filter-pbmc-2021-03-14-18.txt 

python drugranking_by_direction.py --combinations=False --reuse=False  --weights=deltadeg --fdadrugsonly=True  --positiveonly=True  -conf=\(pbmc,cpd07j08,CMAP,nofilter\)  > ./modulation-covid19-pbmc-results-score-fdaonly-posonly/test-filter-pbmc-2021-03-14-19.txt 

python drugranking_by_direction.py --combinations=False --reuse=False  --weights=deltadeg --fdadrugsonly=True  --positiveonly=True  -conf=\(pbmc,cpd07j08,CMAP,filter\)  > ./modulation-covid19-pbmc-results-score-fdaonly-posonly/test-filter-pbmc-2021-03-14-20.txt 

#cp05j08

python drugranking_by_direction.py --combinations=False --reuse=False  --weights=size_x_deltadeg --fdadrugsonly=True  --positiveonly=True  -conf=\(pbmc,cpd05j08,CMAP,nofilter\)  > ./modulation-covid19-pbmc-results-score-fdaonly-posonly/test-filter-pbmc-2021-03-14-21.txt 

python drugranking_by_direction.py --combinations=False --reuse=False  --weights=size_x_deltadeg --fdadrugsonly=True  --positiveonly=True  -conf=\(pbmc,cpd05j08,CMAP,filter\)  > ./modulation-covid19-pbmc-results-score-fdaonly-posonly/test-filter-pbmc-2021-03-14-22.txt 

python drugranking_by_direction.py --combinations=False --reuse=False  --weights=deltadeg --fdadrugsonly=True  --positiveonly=True  -conf=\(pbmc,cpd05j08,CMAP,nofilter\)  > ./modulation-covid19-pbmc-results-score-fdaonly-posonly/test-filter-pbmc-2021-03-14-23.txt 

python drugranking_by_direction.py --combinations=False --reuse=False  --weights=deltadeg --fdadrugsonly=True  --positiveonly=True  -conf=\(pbmc,cpd05j08,CMAP,filter\)  > ./modulation-covid19-pbmc-results-score-fdaonly-posonly/test-filter-pbmc-2021-03-14-24.txt 
