## Given a new set of n samples of vectors in R^d

1. What fraction of features of each kind (binary, integer, non-negative, character, string etc.)
2. What is the distribution of NaNs per row? Per column? Infs per row? Per column? "Zero" variance rows? columns?


### For level 0

0. Heat map of raw data that fits on screen (1000-means++ to select n, CUR to select d)
1. 1st moment statistics (1 line plot)
    1. mean 
    2. median 
2. 2nd moment statistics
    1. correlation matrix (heatmap)
    1. cumulative variance with elbows
    1. matrix of energy distances (heatmap)
3. density estimate
    4. 1D marginals (Violin + jittered scatter plot of each dimension,  if n > 1000 or d>10, density heatmaps)
    8. 2D marginals (Pairs plots for top ~8 dimensions, if n>1000, 2D heatmaps)
4. Outlier plot 
5. cluster analysis (IDT++)
    1. BIC curves
    1. mean line plot
    1. covariance matrix heatmaps
6. spectral analysis
    1. cumulative variance (with elbows) of data matrix
    1. embedded features (pairs plot)
    1. eigenvectors (heatmap)
    1. cluster analysis of features


### Iterate on results of mclust++ for each level, up to level 5 or so

1. heatmap, sorted by child node
1. location estimate per child + difference between children
1. scale estimate per child + difference between children
1. density estimate per child
    2. 1D marginals: violion plot, separated by child node
    1. 2D marginals: pairs plots, color coded by cluster, voronoi diagram overlaid
1. outlier plot for each child node
1. point compression per child
1. spectral analysis per child



----


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

- use [Geometric median and robust estimation in Banach spaces](http://projecteuclid.org/euclid.bj/1438777595) to obtain robust estimates of 1st and 2nd moments

### if features have categories

1. sort by category
2. color code labels by category

### if points have categories

1. label points in scatter plots by symbol
