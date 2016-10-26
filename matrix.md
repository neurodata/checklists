## Given a new set of n samples of vectors in R^d

1. What fraction of features of each kind (binary, integer, non-negative, character, string etc.)
2. What is the distribution of NaNs per row? Per column? Infs per row? Per column? "Zero" variance rows? columns?
3. Heat map of scaled data that fits on screen (if n>1000, compress n, if d>100, compress d)
4. Violin plot of each dimension (if d>100, compress d, if n < 1000, overlay jittered scatterplot)
5. Outlier plot (if n>1000, show violin plot with outliers plotted as jittered scatterplot) 
6. Correlation matrix of features (if d>100, compress d)
7. Cumulative variance (with elbows)
8. Pairs plots for top ~8 dimensions (if d>8, compress d, if n>1000, use heatmap rather than scatterplot)
9. mclust++ for k=1,...10 for all 10 models, plot BIC curves (if d>n, compress d)
10. draw voronoi diagram (induced by mclust++) overlaid on "pairs plots", and color code points

- to compress n, 
    1. subsample uniformly at random, 
    2. use 1 iteration of k-means++ 
- to compress d, 
    1. subsample uniformly at random, 
    2. PCA, or 
    3. CUR decomposition
