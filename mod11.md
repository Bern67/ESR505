Rainbow Trout Condition
========================================================

## Black Bear Lake
### *Southeast Alaska, 2001*

### Introduciton
For the purpose of managing a recreational sport fisheries for a trout population, we would like to know the general condition of the population.  One way to estimate this is with a qualatative measure called a Fulton Conditon Factor. This condition factor was proposed in 1902 by Fulton as a mathematical formula that would quantify the condition of the fish:

**K** = 10^N W/L^3

Where:

**K** is the Condition Factor of the Coefficient of Condition.

**W** is the weight of the fish in grams (g).

**L** is the lenght of the fish in millimetres (mm).

**N = 5**; Set at 5 for salmonids.

For salmonids, **K** values usually fall in the range of 0.8 to 2.0.

**K** value | Comments
--- | ---
1.60  | *Excellent condition*
1.40  | *Good condition*
1.20  | *Fair condition*
1.00  | *Poor condition*
0.80  | *Extremely poor condition*

The Conditon Factor **K** allows fisheries managers to compare quantitatively the conditon of individual fish within a population, indifidual fish from different populations, and among different populations from different geograpical locations.

The rainbow trout population in Black Bear Lake was sampled during a two week period in 2001 using fyke nets and baited hoop traps.

### Fish Length

Because fish condition is directly related to fish lenght and weight, we can look at weight distribution by lenght:

![Rainbow Trout Lenght on Weight](figure/qplot.png) 

**Figure 1.  Rainbow Trout Weight (g) on Length (mm)**


### Fulton K

**Table 1.  Fulton Conditon summary statistics.**

```
##    Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
##    0.39    0.98    1.05    1.06    1.11    3.24
```



The condition of most fish caught during this sampling were between 0.98 and 1.11(Figure 2, Table 1), while the mean condition for the sampled population was 1.06, indicating the majority of fish are in poor condition.

![plot of chunk unnamed-chunk-2](figure/unnamed-chunk-2.png) 

**Figure 2.  Fulton Conditon frequency histogram.**


### References

Fulton, T. (1902) Rate of growth of seas fishes.  Sci. Invert. Fish. Div. Scot. Rept. 20.
