## Given a new set of T time-samples of a d-dimensional time-series

1. What fraction of features of each kind (binary, integer, non-negative, character, string etc.)
2. What is the distribution of NaNs per row? Per column? Infs per row? Per column? "Zero" variance rows? columns?
3. Heatmap of raw data (if n>1000, compress n, if d>100, compress d)
3. Heatmap of power spectra with #bands=1000 (if d>100, compress d)
4. Sparkline plot of each dimension (if n < 1000, compress n, if d>100, compress d)
5. Spectrogram for each dimension (if d>10, compress d)
6. Correlation matrix of features (if d>100, compress d)
7. Cumulative variance (with elbows)
7. Anomaly detection plot (maybe using outlier detection meda?)
9. Change-point detection plot (maybe using mclust++?)
10. dF/<F>


- to compress n, 
    1. subsample contiguous block, 
    2. downsample 
- to compress d, 
    1. subsample uniformly at random, or
    2. kalman filter
