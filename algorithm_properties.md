This is a list of algorithmic properties that one may desire to use to evaluate an algorithm

Notation:

- M = statistical model
- n = sample size
- p = observed dimensionality
- d = intrinsic dimensionality
- T = # threads



## Theoretical Properties

### Statistical Properties


1. unbiased under M
2. consistent under M
3. robustness under misspecification M'
4. efficient (or relatively efficient) under model M in terms of n, p, and d. 
5. hyper-parameters
 	- how many
	- are they nested (like PCA) or not (like NMF)
	- are "warm starts" available (like Lasso) or not (like isomap)





### Computational Properties

1. asymptotic time complexity in terms of sample size (n), ambient dimensionality (p), intrinsic dimensionality (d), and # of threads (T), for training [and testing when available]
2. asymptotic space complexity as above


|  | train | test |
| :---:  | :---: | :---: |
| space | O(ndT) | |
| time | | |




## Empirical Properties


1. Average loss vs n, p [& d] for simulated benchmark suite
1. Distribution of loss for real data benchmark suite, possibly cut multiple ways
1. Computational train [/test] time [/space] for all the above settings
6. [Numerically stablility: especially when p > n]
3. [Parallelism]
	- Scale up (time vs "resources" (eg, CPUs or RAM for fixed # of nodes) 
	- Scale out (time vs # nodes for fixed data size)
	- on which hardware platforms: CPU, GPU, cluster, mobile, dedicated hardware, HPC? 
1. [Price for all the above settings]



## Implementation Properties

1. Findable: open source license & DOI
2. Installable: instructions & package manager & container
3. Runable/Re-usable: docs & demo
4. Modifiable: vignettes & tests
5. Benchmarkable: docs & figs



