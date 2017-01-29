a good methods paper is organized by and has the components:



## methods

### setting

1. task: explain the task.  for example, we are given n samples in R^d, and we want to estimate a density.
1. loss function: state the loss function in words and latex.
1. statistical goal: 
  1. explain the statistical goal in words.  this almost always means either obtaining a test with high power, 
or an estimator with low expected loss, or a decision process with low regret.  ideally, this is stated using statistical decision theoretical language.
  1. formally write down the goal (in latex).
1. desiderata: [here](https://github.com/neurodata/checklists/blob/master/algorithm_properties.md) is a list of algorithm properties.  the desiderata should typically be particular goals for a subset of these properties.
1. metric: formally (in latex) write the metric we will use to evaluate performance when a "gold standard" is available.  
  1. if in real data, no gold standard is available, also state the metric we will use to evaluate the data in that setting.

### approach

1. algorithm: 
  1. 1 paragraph high-level description of algorithm 
  1. pseudocode. input must include all hyper-parameters.
1. model: 
  1. explain the statistical model under which this algorithm can possibly get the right answer.  this may be a nonparametric model, in which we consider all possible distrutions on R^d, or a parametric model. if it is parametric, explicitly enumerate the assumptions relative to the nonparametric model. 
  1. state whether it is ever guaranteed to get the right answer, and if so, under what conditions

## results

### Why would it work well?

1. write a paragraph providing geometric intuition as to why this algorithm should work well under certain contexts/s settings, which includes writing which contexts you think it should work well.  
1. Support this geometic intuition with concrete simulated examples, in particular: 
  1. good illustrative example: 
    1. write (in latex) the generating distribution of data under which we expect the algorithm to perform well. ideally, in the introduction of the manuscript we've already explained that there is a **gap** that we are filling, so this simulation should demonstrate that this method fills this gap, and also illustrate that the other methdos fail here. 
    1. a figure illustrating that the method achieves the goal in the setting.  note that this figure should clearly indicate the simulated truth and the error of the algorithm. compare to reference algs.
  1. bad illustrative example: same deal, but this time, illustrating that it does not work much worse than other algorithms in settings for which we expect it not to do better. compare to reference algs.
1. prove theoretical properties about method. this means provide theoretical guarantees of performance along >=1 of the desired properties from [here](https://github.com/neurodata/checklists/blob/master/algorithm_properties.md). this includes proving when it is (and is not) optimal.


### How well does it work?


1. simulated numerical support: 
  1. describe (in words and equations) simulated example that demonstrates that the theoretical result hold empirically as well (these might be the above illustrative example). 
  1. run algorithm on 10x examples, compute metric, plot distribution of metrics.
1. simluated numerical extension: 
  1. describe (in words and equations)  simulations that extend beyond the limitations of the theory (if the method is parametric), for example, demonstrate robustness, or finite sample properties. ideally use a reference suite of simulated examples.
  1. run alg on >10x examples, compute metric, plot distribution of metrics. compare to reference algs. 
1. Computational properties: write down eg, worst case computational space and time requirements as a function of n & p, and possibly T (# of threads), and other data parameters such as K (# of cluster), d (# of dimensions embedded into), etc.
1. real data examples: 
  1. describe >1 real data examples (ideally, use examples that previous authors have used to enable a fair comparison).
  1. run algs on real data, plot results that demonstrate that the performance also improves performance on real data examples, relative to previously existing tools. 
1. synthetic data analysis: generate data as close to real data as possible, and run same analysis, to assess the degree of credance we lend to the results on the real data.


### How well does it care along other desirable dimensions?


Make a table of [pragmatic algorithm properties](https://github.com/neurodata/checklists/blob/master/algorithm_properties.md#pragmatic-properties). Columns are properties, rows are algorithms.


for a reasonable example, see my [signal subgraph paper](http://ieeexplore.ieee.org/document/6341752/)
