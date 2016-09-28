## Given a new set of n samples of vectors in R^d

###  if n<1000, d<100:

1. For 1 sample, how many kinds of features of each kind (binary, integer, non-negative, character, string etc.)
2. For another sample: how many kinds of features of each kind (binary, integer, non-negative, character, string etc.)
3. Heat map of raw data
4. Violin plots of each dimension
5. Outlier plot
6. Correlation matrix of features
7. Scree plot (with elbows)
8. Pairs plots for top ~8 dimensions
9. mclust for k=1,...10 for all 10 models, plot BIC curves
10. color points in pairs plot by best cluster estimates



### if n>>1000, d<100:

1. For 1 sample, how many kinds of features of each kind (binary, integer, non-negative, character, string etc.)
2. For another sample: how many kinds of features of each kind (binary, integer, non-negative, character, string etc.)
3. Heat map of randomly selected 1,000 samples of raw data
4. Violin plots of each dimension
5. Outlier plot
6. Correlation matrix of features
7. Scree plot (with elbows)
8. "Pairs plots" of 2D kernel density estimates for top ~8 dimensions
9. mclust for k=1,...10 for all 10 models, plot BIC curves
10. draw voronoi diagram overlaid on "pairs plots"
