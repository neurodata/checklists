a good methods paper is organized by and has the components:

1. setting: explain the setting.  for example, we are given n samples in R^d, and we want to estimate a density.
1. model: explain the model under which we are operating on.  
this may be a nonparametric model, in which we consider all possible distrutions on R^d, or a parametric model. 
if it is parametric, explicitly enumerate the assumptions relative to the nonparametric model.
1. goal: explain the goal, formally.  this almost always means either obtaining a test with high power, 
or an estimator with low expected loss, or a decision process with low regret.  
ideally, this is stated using statistical decision theoretical language.
1. desiderata: [here](https://github.com/neurodata/checklists/blob/master/algorithm_properties.md) is a list of algorithm properties.  the desiderata should typically be particular goals for a subset of these properties.
1. algorithm: describe algorithm first in words, then provide pseudocode. description should include any hyper-parameters.
1. illustrative example: a figure illustrating that the method achieves the goal in the setting under which we expect it to.  ideally, in the introduction of the manuscript we've already explained that there is a **gap** that we are filling, so this figure should also illustrate that the other methdos fail here.
1. theory: prove theoretical properties about method. this means provide theoretical guarantees of performance along >=1 of the desired properties from [here](https://github.com/neurodata/checklists/blob/master/algorithm_properties.md).
1. numerical support: run simulation that demonstrates that the theoretical result hold empirically as well.
1. numerical extension: run simulations that extend beyond the limitations of the theory, for example, demonstrate robustness, or finite sample properties.
1. simulated benchmark: compare performance of new method with existing tools on simulated data, for which we know what we expect the answer to be.  ideally, the set of simulations overlaps with what previous people did, so we have fair comparisons.
1. real data example: demonstration that the performance is not merely theoretical in nature, rather, it also improves performance on real data (relative to previously existing tools).
1. synthetic data analysis: generate data as close to real data as possible, and run same analysis, to assess the degree of credance we lend to the results on the real data.
