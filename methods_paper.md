a good methods paper is organized by and has the components:



## methods

### setting

1. describe the task colloqiually, for example, we are developing a nonparametric 2-sample test.
1. describe the statistical goal formally. Note that the statistical goal is defined by: 
    1. sample space, 
    2. action space, 
    3. statistical model, 
    4. loss function, 
    5. decision rule(s) under consideration, 
    6. risk functional.

Some of these might be implicit, although it is better to make them explicit.  For example,  `H0: F=G` vs. `HA: F != G` is a good start for 2-sample testing, but then we must also know that `X ~ F`, what space does `X` live in?  Also, what statistical model do `F` and `G` live in? Gaussian? The loss for hypothesis testing is 0-1, and the risk is almost always to maximize power under a given critical value.    


1. state the theoretical statistical and computational desiderata of the method, potentially including
    - unbiased under model M
    - consistent under model M
    - robustness under model misspecification M'
    - efficient (or relatively efficient) under model M in terms of both sample size (n) and "intrinsic" (d) and/or ambient (p) dimensionality
    - asymptotic computational space and time complexity in terms of n, p, d


### approach

1. describe the algorithm colloqiually, in ~1 paragraph, ideally with schematic illustration 
2. write pseudocode as clearly and compeltely as you can, including all inputs and hyper-parameters.
1. describe the all evaulation criteria/metrics as clearly as you can.
  

## results

### Why would it work well?

1. Describe the geometric intuition (in ~1 paragraph) as to why this algorithm should work well under certain contexts/s settings,  include if possible:
  1. (all) the settings under which algorithm *could possibly* get the right answer
  1. (all) the settings under which algorithm *is guaranteed* to get the right answer
1. Support this geometic intuition with concrete simulated examples, in particular: 
  1. positive illustrative example: 
    1. describe the generating distribution of data under which we expect the algorithm to perform well. ideally, in the introduction of the manuscript we've already explained that there is a **gap** that we are filling, so this simulation should demonstrate that this method fills this gap, and also illustrate that the other methdos fail here. 
    1. a figure illustrating that the method achieves the goal in the setting.  note that this figure should clearly indicate the simulated truth and the quantitative error of the algorithm. compare to reference algs.
  1. negative illustrative example: same deal, but this time, illustrating that it does not work much worse than other algorithms in settings for which we expect it not to do better. compare to reference algs.
1. [Optional] prove theoretical properties about method (listed above), both statistical and computational, both when it is optimal, and even better also when it is not.


### How well does it work?


1. simulated numerical support: 
  1. describe (in words and equations) simulated example that demonstrates that the above intuitions hold empirically as well (this might be the above positive example).  
  1. run algorithm on >=10x trials, compute metric, plot distribution of metrics.
1. simluated numerical extension: 
  1. describe (in words and equations)  simulations that extend beyond the limitations of the theory (if the method is parametric), for example, demonstrate robustness, or finite sample properties. ideally use a reference suite of simulated examples (this might be related to the above negative example) 
  1. run alg on >=10x trials, compute metric, plot distribution of metrics. compare to reference algs (this could  be the negative example).
1. Computational properties: write down eg, worst case computational space and time requirements as a function of n & p, and possibly T (# of threads), and other data parameters such as K (# of cluster), d (# of dimensions embedded into), etc.
1. real data examples: 
  1. describe >=1 real data examples (ideally, use examples that previous authors have used to enable a fair comparison).
  1. run algs on real data, plot results that demonstrate that the performance also improves performance on real data examples, relative to previously existing tools.
  1. plot/state run time for each alg.
1. synthetic data analysis: generate data as close to real data as possible, and run same analysis, to assess the degree of credance we lend to the results on the real data.


### How well does it perform along other desirable dimensions?


Make a table of [pragmatic algorithm properties](https://github.com/neurodata/checklists/blob/master/algorithm_properties.md#pragmatic-properties). Columns are properties, rows are algorithms.


for a reasonable example, see my [signal subgraph paper](http://ieeexplore.ieee.org/document/6341752/), or see [markdown demo](https://github.com/neurodata/checklists/blob/master/Tutorials/MATLAB/algs_example/methods_paper_example.md) for a quickie alpha version.
