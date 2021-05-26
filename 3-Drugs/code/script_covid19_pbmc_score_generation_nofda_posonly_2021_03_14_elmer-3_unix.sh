#!/bin/csh

#L1000 runs

#cp05j08

python drugranking_by_direction.py --combinations=False --reuse=False  --weights=size_x_deltadeg --fdadrugsonly=False  --positiveonly=True  -conf=\(pbmc,cpd05j08,L1000,nofilter\)  > ./modulation-covid19-pbmc-results-score-nofda-posonly/test-filter-pbmc-2021-03-12-01.txt 

python drugranking_by_direction.py --combinations=False --reuse=False  --weights=size_x_deltadeg --fdadrugsonly=False  --positiveonly=True  -conf=\(pbmc,cpd05j08,L1000,filter\)  > ./modulation-covid19-pbmc-results-score-nofda-posonly/test-filter-pbmc-2021-03-12-02.txt 

python drugranking_by_direction.py --combinations=False --reuse=False  --weights=deltadeg --fdadrugsonly=False  --positiveonly=True  -conf=\(pbmc,cpd05j08,L1000,nofilter\)  > ./modulation-covid19-pbmc-results-score-nofda-posonly/test-filter-pbmc-2021-03-12-03.txt 

python drugranking_by_direction.py --combinations=False --reuse=False  --weights=deltadeg --fdadrugsonly=False  --positiveonly=True  -conf=\(pbmc,cpd05j08,L1000,filter\)  > ./modulation-covid19-pbmc-results-score-nofda-posonly/test-filter-pbmc-2021-03-12-04.txt 



#cp07j08

python drugranking_by_direction.py --combinations=False --reuse=False  --weights=size_x_deltadeg --fdadrugsonly=False  --positiveonly=True  -conf=\(pbmc,cpd07j08,L1000,nofilter\)  > ./modulation-covid19-pbmc-results-score-nofda-posonly/test-filter-pbmc-2021-03-13-05.txt 

python drugranking_by_direction.py --combinations=False --reuse=False  --weights=size_x_deltadeg --fdadrugsonly=False  --positiveonly=True  -conf=\(pbmc,cpd07j08,L1000,filter\)  > ./modulation-covid19-pbmc-results-score-nofda-posonly/test-filter-pbmc-2021-03-13-06.txt 

python drugranking_by_direction.py --combinations=False --reuse=False  --weights=deltadeg --fdadrugsonly=False  --positiveonly=True  -conf=\(pbmc,cpd07j08,L1000,nofilter\)  > ./modulation-covid19-pbmc-results-score-nofda-posonly/test-filter-pbmc-2021-03-13-07.txt 

python drugranking_by_direction.py --combinations=False --reuse=False  --weights=deltadeg --fdadrugsonly=False  --positiveonly=True  -conf=\(pbmc,cpd07j08,L1000,filter\)  > ./modulation-covid19-pbmc-results-score-nofda-posonly/test-filter-pbmc-2021-03-13-08.txt 

#MD

python drugranking_by_direction.py --combinations=False --reuse=False  --weights=size_x_deltadeg --fdadrugsonly=False  --positiveonly=True  -conf=\(pbmc,MD,L1000,nofilter\)  > ./modulation-covid19-pbmc-results-score-nofda-posonly/test-filter-pbmc-2021-03-13-09.txt 

python drugranking_by_direction.py --combinations=False --reuse=False  --weights=size_x_deltadeg --fdadrugsonly=False  --positiveonly=True  -conf=\(pbmc,MD,L1000,filter\)  > ./modulation-covid19-pbmc-results-score-nofda-posonly/test-filter-pbmc-2021-03-13-10.txt 

python drugranking_by_direction.py --combinations=False --reuse=False  --weights=deltadeg --fdadrugsonly=False  --positiveonly=True  -conf=\(pbmc,MD,L1000,nofilter\)  > ./modulation-covid19-pbmc-results-score-nofda-posonly/test-filter-pbmc-2021-03-13-11.txt 

python drugranking_by_direction.py --combinations=False --reuse=False  --weights=deltadeg --fdadrugsonly=False  --positiveonly=True  -conf=\(pbmc,MD,L1000,filter\)  > ./modulation-covid19-pbmc-results-score-nofda-posonly/test-filter-pbmc-2021-03-13-12.txt 


#cmap runs

#md

python drugranking_by_direction.py --combinations=False --reuse=False  --weights=size_x_deltadeg --fdadrugsonly=False  --positiveonly=True  -conf=\(pbmc,MD,CMAP,nofilter\)  > ./modulation-covid19-pbmc-results-score-nofda-posonly/test-filter-pbmc-2021-03-13-13.txt 

python drugranking_by_direction.py --combinations=False --reuse=False  --weights=size_x_deltadeg --fdadrugsonly=False  --positiveonly=True  -conf=\(pbmc,MD,CMAP,filter\)  > ./modulation-covid19-pbmc-results-score-nofda-posonly/test-filter-pbmc-2021-03-13-14.txt 

python drugranking_by_direction.py --combinations=False --reuse=False  --weights=deltadeg --fdadrugsonly=False  --positiveonly=True  -conf=\(pbmc,MD,CMAP,nofilter\)  > ./modulation-covid19-pbmc-results-score-nofda-posonly/test-filter-pbmc-2021-03-13-15.txt 

python drugranking_by_direction.py --combinations=False --reuse=False  --weights=deltadeg --fdadrugsonly=False  --positiveonly=True  -conf=\(pbmc,MD,CMAP,filter\)  > ./modulation-covid19-pbmc-results-score-nofda-posonly/test-filter-pbmc-2021-03-13-16.txt 

#cp07j08

python drugranking_by_direction.py --combinations=False --reuse=False  --weights=size_x_deltadeg --fdadrugsonly=False  --positiveonly=True  -conf=\(pbmc,cpd07j08,CMAP,nofilter\)  > ./modulation-covid19-pbmc-results-score-nofda-posonly/test-filter-pbmc-2021-03-13-17.txt 

python drugranking_by_direction.py --combinations=False --reuse=False  --weights=size_x_deltadeg --fdadrugsonly=False  --positiveonly=True  -conf=\(pbmc,cpd07j08,CMAP,filter\)  > ./modulation-covid19-pbmc-results-score-nofda-posonly/test-filter-pbmc-2021-03-13-18.txt 

python drugranking_by_direction.py --combinations=False --reuse=False  --weights=deltadeg --fdadrugsonly=False  --positiveonly=True  -conf=\(pbmc,cpd07j08,CMAP,nofilter\)  > ./modulation-covid19-pbmc-results-score-nofda-posonly/test-filter-pbmc-2021-03-13-19.txt 

python drugranking_by_direction.py --combinations=False --reuse=False  --weights=deltadeg --fdadrugsonly=False  --positiveonly=True  -conf=\(pbmc,cpd07j08,CMAP,filter\)  > ./modulation-covid19-pbmc-results-score-nofda-posonly/test-filter-pbmc-2021-03-13-20.txt 

#cp05j08

python drugranking_by_direction.py --combinations=False --reuse=False  --weights=size_x_deltadeg --fdadrugsonly=False  --positiveonly=True  -conf=\(pbmc,cpd05j08,CMAP,nofilter\)  > ./modulation-covid19-pbmc-results-score-nofda-posonly/test-filter-pbmc-2021-03-12-21.txt 

python drugranking_by_direction.py --combinations=False --reuse=False  --weights=size_x_deltadeg --fdadrugsonly=False  --positiveonly=True  -conf=\(pbmc,cpd05j08,CMAP,filter\)  > ./modulation-covid19-pbmc-results-score-nofda-posonly/test-filter-pbmc-2021-03-12-22.txt 

python drugranking_by_direction.py --combinations=False --reuse=False  --weights=deltadeg --fdadrugsonly=False  --positiveonly=True  -conf=\(pbmc,cpd05j08,CMAP,nofilter\)  > ./modulation-covid19-pbmc-results-score-nofda-posonly/test-filter-pbmc-2021-03-12-23.txt 

python drugranking_by_direction.py --combinations=False --reuse=False  --weights=deltadeg --fdadrugsonly=False  --positiveonly=True  -conf=\(pbmc,cpd05j08,CMAP,filter\)  > ./modulation-covid19-pbmc-results-score-nofda-posonly/test-filter-pbmc-2021-03-12-24.txt 
