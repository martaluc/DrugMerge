# a file for testign quickly python code snippets
import scipy.stats
from math import erf,sqrt
 
x = 'abc'

print x
print str(x)

for z_scores in (-5.0, -4.0, -3.0, -2.0, -1.0, 0.0, 1.0, 2.0, 3.0, 4.0, 5.0):
    p_values = scipy.stats.norm.sf(abs(z_scores))*2 #twosided  
    p=0.5*(1+erf(z_scores/sqrt(2)))	
    print z_scores,  p_values, 2*(1-p)
