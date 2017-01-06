## Given a new set of n samples of vectors in R^d

1. What fraction of features of each kind (binary, integer, non-negative, character, string etc.)
2. What is the distribution of NaNs per row? Per column? Infs per row? Per column? "Zero" variance rows? columns?


### For level 0

3. Heat map of raw data that fits on screen 
    1. if n>1000, compress n, 
    1. if d>100, compress d
4. Violin plot of each dimension 
    1. if d>100, compress d, 
    1. if n < 1000, overlay jittered scatterplot
5. Outlier plot 
    1. if n>1000, show violin plot with outliers plotted as jittered scatterplot 
6. Correlation matrix of features
    1. if d>100, compress d
7. Cumulative variance (with elbows)
8. Pairs plots for top ~8 dimensions 
    1. if d>8, compress d, 
    1. if n>1000, use heatmap rather than scatterplot
1. plot cumulative variance
1. pairs plot of features embedded
1. do hierarchical mclust++, plot BIC curves  (if d>n, compress d)
1. label pairs plots by estimated cluster and overlay voronoi diagrams (induced by mclust++)


### Iterate on results of mclust++ for each level, up to level 5 or so

1. heatmap, sorted by child node
2. violion plot, separated by child node
1. outlier plot for each child node
1. mean for each child node, and difference between children
1. correlation matrix for each child node, and difference between children
1. cumulative variance for each child node
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
