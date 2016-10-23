## Given a new set of n samples of vectors in R^d

1. What fraction of features of each kind (binary, integer, non-negative, character, string etc.)
2. What is the distribution of NaNs per row? Per column? Infs per row? Per column?
3. Heat map of raw data that fits on screen (if n>1000, compress n, if d>100, compress d)
4. Violin plot of each dimension (if d>100, compress d, if n < 1000, overlay jittered scatterplot)
5. Outlier plot
6. Correlation matrix of features (if d>100, compress d)
7. Cumulative variance (with elbows)
8. Pairs plots for top ~8 dimensions (if d>8, compress d)
9. mclust++ for k=1,...10 for all 10 models, plot BIC curves (if d>n, compress d)
10. draw voronoi diagram (induced by mclust++) overlaid on "pairs plots", and color code points

- to compress n, 
    1. subsample uniformly at random, 
    2. k-means for large k (show means), or  
    3. "k-mediods" for large k (show mediods)
- to compress d, 
    1. subsample uniformly at random, 
    2. PCA, or 
    3. "[column based matrix approximation](http://epubs.siam.org/doi/abs/10.1137/12086755X)" 


###  if n<1000, d<100:

1. What fraction of features of each kind (binary, integer, non-negative, character, string etc.)
2. What is the distribution of NaNs per row? Per column? Infs per row? Per column?
3. Heat map of raw data
4. Jittered scatter plot with opacity overlaid on Violin plots of each dimension
5. Outlier plot
6. Correlation matrix of features
7. Cumulative variance (with elbows)
8. Pairs plots for top ~8 dimensions
9. mclust++ for k=1,...10 for all 10 models, plot BIC curves
10. color points in pairs plot by best cluster estimates



### if n>>1000, d<100:

1. What fraction of features of each kind (binary, integer, non-negative, character, string etc.)
2. What is the distribution of NaNs per row? Per column? Infs per row? Per column?
3. Heat map of randomly selected 1,000 samples of raw data
4. Violin plots of each dimension
5. Outlier plot
6. Correlation matrix of features
7. Cumulative variance (with elbows)
8. "Pairs plots" of 2D kernel density estimates for top ~8 dimensions
9. mclust++ for k=1,...10 for all 10 models, plot BIC curves
10. draw voronoi diagram overlaid on "pairs plots"


### if n<1000, d>>100:

1. What fraction of features of each kind (binary, integer, non-negative, character, string etc.)
2. What is the distribution of NaNs per row? Per column? Infs per row? Per column?
3. Heat map of randomly selected 1,000 dimensions of raw data
4. Violin plots of randomly selected ~100 dimension
5. Outlier plot
6. Cumulative variance (with elbows)
7. Top ~10 eigenvectors
8. Pairs plots of data after embedded into the top ~8 dimensions
9. mclust++ for k=1,...10 for all 10 models, plot BIC curves, using the dimension chosen by ZG(2)
10. draw voronoi diagram overlaid on "pairs plots"


### if n>>1000, d>>100:

1. What fraction of features of each kind (binary, integer, non-negative, character, string etc.)
2. What is the distribution of NaNs per row? Per column? Infs per row? Per column?
3. Heat map of randomly selected 1,000 dimensions of ~1000 random samples of data
4. Violin plots of randomly selected ~100 dimensions
5. Outlier plot
6. Cumulative variance (with elbows)
7. Top ~10 eigenvectors
8. Pairs plots of data after embedded into the top ~8 dimensions
9. mclust++ for k=1,...10 for all 10 models, plot BIC curves, using the dimension chosen by ZG(2)
10. draw voronoi diagram overlaid on "pairs plots"
