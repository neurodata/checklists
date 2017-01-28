a good methods paper is organized by and has the components:



## methods

1. setting: explain the setting.  for example, we are given n samples in R^d, and we want to estimate a density.
1. model: explain the statistical model under which we are operating.  this may be a nonparametric model, in which we consider all possible distrutions on R^d, or a parametric model. if it is parametric, explicitly enumerate the assumptions relative to the nonparametric model.
1. goal: explain the goal, formally.  this almost always means either obtaining a test with high power, 
or an estimator with low expected loss, or a decision process with low regret.  ideally, this is stated using statistical decision theoretical language.
1. desiderata: [here](https://github.com/neurodata/checklists/blob/master/algorithm_properties.md) is a list of algorithm properties.  the desiderata should typically be particular goals for a subset of these properties.
1. algorithm: describe algorithm first in words, then provide pseudocode. description should include any hyper-parameters.


## results

### Why would it work well?

1. write a paragraph providing geometric intuition as to why this algorithm should work well under certain contexts/s settings, which includes writing which contexts you think it should work well.  
1. Support this geometic intuition with concrete simulated examples, in particular: 
  1. good illustrative example: a figure illustrating that the method achieves the goal in the setting under which we expect it to.  ideally, in the introduction of the manuscript we've already explained that there is a **gap** that we are filling, so this figure should demonstrate that this method fills this gap, and also illustrate that the other methdos fail here. note that this figure should clearly indicate the simulated truth and the error of the algorithm.
  1. bad illustrative example: same deal, but this time, illustrating that it does not work much worse than other algorithms in settings for which we expect it not to do better.
1. prove theoretical properties about method. this means provide theoretical guarantees of performance along >=1 of the desired properties from [here](https://github.com/neurodata/checklists/blob/master/algorithm_properties.md). this includes proving when it is (and is not) optimal.


### How well does it work?


1. simulated numerical support: run simulation that demonstrates that the theoretical result hold empirically as well (these might be the above illustrative example). compare to benchmarks.
1. simluated numerical extension: run simulations that extend beyond the limitations of the theory (if the method is parametric), for example, demonstrate robustness, or finite sample properties. compare to benchmarks, ideally using a reference suite of simulated examples.
1. Computational properties: eg, worst case computational space and time requirements as a function of n & p, and possibly T (# of threads), and other data parameters such as K (# of cluster), d (# of dimensions embedded into), etc.
1. real data examples: demonstration that the performance also improves performance on real data examples, relative to previously existing tools, ideally using a reference suite of real data examples. 
1. synthetic data analysis: generate data as close to real data as possible, and run same analysis, to assess the degree of credance we lend to the results on the real data.


### How well does it care along other desirable dimensions?


See [prgmatic algorithm properties](https://github.com/neurodata/checklists/blob/master/algorithm_properties.md#pragmatic-properties) for  details.


for a reasonable example, see my [signal subgraph paper](http://ieeexplore.ieee.org/document/6341752/)
