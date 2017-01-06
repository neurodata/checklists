

## Pragmatic Properties

1. Code available?
2. installation ease, including:
    1. clear enough instructions?
    2. dependencies easy to deal with?
    3. 1-line installable (eg, via CRAN or pip)?
    4. virtualized (eg, in docker)?
3. run ease
    1. what language is it implemented in?
    2. how many hyper-parameters
    3. for each tunable parameter (or hyper-parameter)
        1. is it nested?
        2. are "warm starts" available?
4. platform considerations, does it run on
    1. CPU
    2. GPU
    3. Cluster
    4. Mobile
    5. Dedicated hardware (eg, FPGA)
    6. Supercomputer
3. open source?
    1. if not, how much does it cost?
    2. if so, in what language(s)?
4. reasonably licensed?

## Theoretical Properties

1. Statistical Considerations, state the:
    1. Feasible region of action space (the set of possible "actions")?
    2. "Consistent region" of action space (ie, region of space for which the expected action is the optimal one)?
    3. Complexity (size) of action space (eg, number of parameters)?
    5. Robustness to model misspecifications (eg, if action space is linear, and real model is quadratic, how bad is performance)?
    6. Numerically stablility (eg, if p > n, what happens)?
    4. Convergence rate (eg, how fast does loss decrease as sample size increases)?
2. computational considerations: theoretical complexity in terms of sample size (n), dimensionality (d), and ideally number of cores (t)

| 	| space | time 	|
| :--- 	| :--- 	| :---	|
| train |  	| 	|
| test 	| 	| 	|

## Empirical Properties

### Describe Stuff

1. Describe simulated settings---via formal generative process---for three
different "suites":
    3. Simulated benchmark suite, including
        1. at least one toy setting for which you suspect alg A will perform very well
    	2. at least one toy setting for which you suspect alg A will perform poorly, but alg A' will perform well (for some A')
    4. Real data benchmark suite
    5. Sythetic data benchmark suite
2. Describe empirical metrics for evaluation
    1. What are the statistical metrics?
    	1. Accuracy/loss (eg, squared error) vs sample size (& dimensionality)?
    	2. Variance/uncertainty (eg, entropy) vs sample size (& dimensionality)?
    2. What is the computational metric (eg, walltime per iteration per core per
sample per dimension)?
3. Describe figures for comparing performance
3. List set of alg's under consideration, including hyper-parameter search settings for each

### Write Code

1. Simulation benchmark suite code
2. Synthetic benchmark suite code
3. Metric evaluation code
4. Comparative figures code

### Run Experiments

Run experiment on *same hardware* for all three suites, for each generate:
1. Table of algorithms vs metrics
2. Figures comparing performances
3. Failure rates for each algorithm
3. Summary of results, commenting in particular on the degree that synthetic data "looks like" the real data
4. Conclusions
