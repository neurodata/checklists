## Given a new set of n samples of vectors in R^d

1. What fraction of features of each kind (binary, integer, non-negative, character, string etc.)
2. What is the distribution of NaNs per row? Per column? Infs per row? Per column? "Zero" variance rows? columns?


### For level 0

0. Heat map of raw data that fits on screen 
1. location estimate (line plots)
    1. mean 
    2. median 
2. scale estimate (heatmaps)
    1. correlation matrix 
    1. robust correlation matrix
    1. matrix of energy distances
3. density estimate
    4. 1D marginals (Violin + jittered scatter plot of each dimension  in n < 1000, heatmap of density otherwise)
    8. 2D marginals (Pairs plots for top ~8 dimensions if n<1000, 2D heatmaps otherwise)
4. Outlier plot 
5. vector quantize
    1. k-means++ initialization (heatmap of k points)
    1. mclust++  (BIC curves)
6. feature quantize
    1. (robust) cumulative variance (with elbows) of data matrix
    1. (robust) cumulative variance (with elbows) of correlation matrix
    1. embedded features (pairs plot)
    1. cluster features (mclust++: color pairs plot by cluster & BIC curve)


### Iterate on results of mclust++ for each level, up to level 5 or so

1. heatmap, sorted by child node
1. location estimate per child + difference between children
1. scale estimate per child + difference between children
1. density estimate per child
    2. 1D marginals: violion plot, separated by child node
    1. 2D marginals: pairs plots, color coded by cluster, voronoi diagram overlaid
1. outlier plot for each child node
1. vector quantize per child
1. feature quantize per child



----

### Compression Options

- when n>1000, to compress n, 
    1. subsample uniformly at random, or
    2. use k-means++ initialization to choose 1000 points. 
- when d>100, to compress d, 
    1. subsample uniformly at random
    2. truncated PCA, using ZG{1,2,3} to select d, default to ZG-2 
    3. CUR decomposition

### Scaling Options

- raw
- linear options
    - linear squash between 0 & 1
    - mean subtract and standard deviation divide
    - median subtract and median absolute deviation divide
    - make unit norm
- nonlinear
    - rank
    - sigmoid squash
    
### robust options

- use [Geometric median and robust estimation in Banach spaces](http://projecteuclid.org/euclid.bj/1438777595) to obtain robust estimates of location and scale

### if features have categories

1. sort by category
2. color code labels by category

### if points have categories

1. label points in scatter plots by symbol
