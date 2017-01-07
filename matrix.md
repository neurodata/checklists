## Given a new set of n samples of vectors in R^d

1. What fraction of features of each kind (binary, integer, non-negative, character, string etc.)
2. What is the distribution of NaNs per row? Per column? Infs per row? Per column? "Zero" variance rows? columns?


### For level 0

0. Heat map of raw data that fits on screen 
    1. if n>1000, compress n, 
    1. if d>100, compress d
1. location estimate: (robust) mean
    1. if d>100, compress d
2. scale estimate: (robust) correlation matrix
    1. if d>100, compress d
3. density estimate
    4. 1D marginals: Violin plot of each dimension 
        1. if d>100, compress d, 
        1. if n < 1000, overlay jittered scatterplot
    8. 2D marginals: Pairs plots for top ~8 dimensions 
        1. if d>8, compress d, 
        1. if n>1000, use heatmap rather than scatterplot
4. Outlier plot 
    1. if n>1000, show violin plot with outliers plotted as jittered scatterplot 
5. vector quantize
    1. k-means++ initialization: heatmap of k points
        1. if d>n, compress d
    1. mclust++: BIC curves
        1. if d>n, compress d
6. feature quantize
    1. (robust) cumulative variance (with elbows) of data matrix
    1. (robust) cumulative variance (with elbows) of correlation matrix
    1. pairs plot of embedded features



----

still working on the below

given clustering:

1. label pairs plots by estimated cluster and overlay voronoi diagrams (induced by mclust++)


### Iterate on results of mclust++ for each level, up to level 5 or so

1. heatmap, sorted by child node
2. violion plot, separated by child node
1. outlier plot for each child node
1. (robust) mean for each child node, and difference between children
1. (robust) correlation matrix for each child node, and difference between children
1. (robust) cumulative variance for each child node
1. pairs plots for each child node
1. compute eigendecomposiiton of covariance matrix
1. scatter plot of embedded features




### Compression Options

- to compress n, 
    1. subsample uniformly at random, or
    2. use k-means++ initialization to choose 1000 points. 
- to compress d, 
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
