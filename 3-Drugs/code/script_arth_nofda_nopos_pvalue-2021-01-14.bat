@ECHO OFF
ECHO  generation of ranking by pvalue without positive filtering
ECHO GEO data
drugranking.py  --mode=nofilter --fdadrugsonly=False  -conf=(arth,GEO,0)    >  results_pvalue_by_direction-filtering-2021-01-14-01.txt
drugranking.py  --mode=nofilter --fdadrugsonly=False  -conf=(arth,GEO,1)   >  results_pvalue_by_direction-filtering-2021-01-14-02.txt
drugranking.py  --mode=nofilter --fdadrugsonly=False  -conf=(arth,GEO,2)    >  results_pvalue_by_direction-filtering-2021-01-14-03.txt
drugranking.py  --mode=nofilter --fdadrugsonly=False  -conf=(arth,GEO,3)    >  results_pvalue_by_direction-filtering-2021-01-14-04.txt
drugranking.py  --mode=nofilter --fdadrugsonly=False  -conf=(arth,GEO,4)  >  results_pvalue_by_direction-filtering-2021-01-14-05.txt
ECHO DM data
drugranking.py  --mode=nofilter --fdadrugsonly=False  -conf=(arth,DM,0)    >  results_pvalue_by_direction-filtering-2021-01-14-06.txt
drugranking.py  --mode=nofilter --fdadrugsonly=False  -conf=(arth,DM,1)     >  results_pvalue_by_direction-filtering-2021-01-14-07.txt
drugranking.py  --mode=nofilter --fdadrugsonly=False  -conf=(arth,DM,2)       >  results_pvalue_by_direction-filtering-2021-01-14-08.txt
drugranking.py  --mode=nofilter --fdadrugsonly=False  -conf=(arth,DM,3)     >  results_pvalue_by_direction-filtering-2021-01-14-09.txt
drugranking.py  --mode=nofilter --fdadrugsonly=False  -conf=(arth,DM,4)       >  results_pvalue_by_direction-filtering-2021-01-14-10.txt
ECHO CMAPup data
drugranking.py  --mode=nofilter --fdadrugsonly=False  -conf=(arth,CMAPup,0)    >  results_pvalue_by_direction-filtering-2021-01-14-11.txt
drugranking.py  --mode=nofilter --fdadrugsonly=False  -conf=(arth,CMAPup,1)     >  results_pvalue_by_direction-filtering-2021-01-14-12.txt
drugranking.py  --mode=nofilter --fdadrugsonly=False  -conf=(arth,CMAPup,2)       >  results_pvalue_by_direction-filtering-2021-01-14-13.txt
drugranking.py  --mode=nofilter --fdadrugsonly=False  -conf=(arth,CMAPup,3)     >  results_pvalue_by_direction-filtering-2021-01-14-14.txt
drugranking.py  --mode=nofilter --fdadrugsonly=False  -conf=(arth,CMAPup,4)       >  results_pvalue_by_direction-filtering-2021-01-14-15.txt
ECHO CMAPdown data
drugranking.py  --mode=nofilter --fdadrugsonly=False  -conf=(arth,CMAPdown,0)    >  results_pvalue_by_direction-filtering-2021-01-14-16.txt
drugranking.py  --mode=nofilter --fdadrugsonly=False  -conf=(arth,CMAPdown,1)     >  results_pvalue_by_direction-filtering-2021-01-14-17.txt
drugranking.py  --mode=nofilter --fdadrugsonly=False  -conf=(arth,CMAPdown,2)       >  results_pvalue_by_direction-filtering-2021-01-14-18.txt
drugranking.py  --mode=nofilter --fdadrugsonly=False  -conf=(arth,CMAPdown,3)     >  results_pvalue_by_direction-filtering-2021-01-14-19.txt
ECHO CMAPupdown data
drugranking.py  --mode=nofilter --fdadrugsonly=False  -conf=(arth,CMAPupdown,0)    >  results_pvalue_by_direction-filtering-2021-01-14-20.txt
drugranking.py  --mode=nofilter --fdadrugsonly=False  -conf=(arth,CMAPupdown,1)     >  results_pvalue_by_direction-filtering-2021-01-14-21.txt
drugranking.py  --mode=nofilter --fdadrugsonly=False  -conf=(arth,CMAPupdown,2)       >  results_pvalue_by_direction-filtering-2021-01-14-22.txt
drugranking.py  --mode=nofilter --fdadrugsonly=False  -conf=(arth,CMAPupdown,3)     >  results_pvalue_by_direction-filtering-2021-01-14-23.txt
ECHO L1000up data
drugranking.py  --mode=nofilter --fdadrugsonly=False  -conf=(arth,L1000up,0)    >  results_pvalue_by_direction-filtering-2021-01-14-24.txt
drugranking.py  --mode=nofilter --fdadrugsonly=False  -conf=(arth,L1000up,1)     >  results_pvalue_by_direction-filtering-2021-01-14-25.txt
drugranking.py  --mode=nofilter --fdadrugsonly=False  -conf=(arth,L1000up,2)       >  results_pvalue_by_direction-filtering-2021-01-14-26.txt
drugranking.py  --mode=nofilter --fdadrugsonly=False  -conf=(arth,L1000up,3)     >  results_pvalue_by_direction-filtering-2021-01-14-27.txt
drugranking.py  --mode=nofilter --fdadrugsonly=False  -conf=(arth,L1000up,4)       >  results_pvalue_by_direction-filtering-2021-01-14-28.txt
ECHO L1000down data
drugranking.py  --mode=nofilter --fdadrugsonly=False  -conf=(arth,L1000down,0)    >  results_pvalue_by_direction-filtering-2021-01-14-29.txt
drugranking.py  --mode=nofilter --fdadrugsonly=False  -conf=(arth,L1000down,1)     >  results_pvalue_by_direction-filtering-2021-01-14-30.txt
drugranking.py  --mode=nofilter --fdadrugsonly=False  -conf=(arth,L1000down,2)       >  results_pvalue_by_direction-filtering-2021-01-14-31.txt
drugranking.py  --mode=nofilter --fdadrugsonly=False  -conf=(arth,L1000down,3)     >  results_pvalue_by_direction-filtering-2021-01-14-32.txt
drugranking.py  --mode=nofilter --fdadrugsonly=False  -conf=(arth,L1000down,4)     >  results_pvalue_by_direction-filtering-2021-01-14-33.txt
ECHO L1000updown data
drugranking.py  --mode=nofilter --fdadrugsonly=False  -conf=(arth,L1000updown,0)    >  results_pvalue_by_direction-filtering-2021-01-14-34.txt
drugranking.py  --mode=nofilter --fdadrugsonly=False  -conf=(arth,L1000updown,1)     >  results_pvalue_by_direction-filtering-2021-01-14-35.txt
drugranking.py  --mode=nofilter --fdadrugsonly=False  -conf=(arth,L1000updown,2)       >  results_pvalue_by_direction-filtering-2021-01-14-36.txt
drugranking.py  --mode=nofilter --fdadrugsonly=False  -conf=(arth,L1000updown,3)     >  results_pvalue_by_direction-filtering-2021-01-14-37.txt
drugranking.py  --mode=nofilter --fdadrugsonly=False  -conf=(arth,L1000updown,4)     >  results_pvalue_by_direction-filtering-2021-01-14-38.txt
