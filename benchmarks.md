Benchmarking algorithms includes first addressing all the properties, as described [here](https://github.com/neurodata/checklists/blob/master/algorithm_properties.md).  Then following these steps:


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
