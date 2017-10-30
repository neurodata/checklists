a good methods paper is organized by and has the components:



## Methods

### Setting

1. describe the task colloqiually, for example, we are developing a nonparametric 2-sample test.
1. state the desiderata of the method, [algorithm_properties] contains a good list.
1. describe the statistical goal formally. Note that the statistical goal is defined by: 
    1. sample space, 
    2. action space, 
    3. statistical model under consideration 
    4. loss function, 
    5. decision rule(s) under consideration, 
    6. risk functional.

Some of these might be implicit, although it is better to make them explicit.  For example,  `H0: F=G` vs. `HA: F != G` is a good start for 2-sample testing, but then we must also know that `X ~ F`, what space does `X` live in?  Also, what statistical model do `F` and `G` live in? Gaussian? The loss for hypothesis testing is 0-1, and the risk is almost always to maximize power under a given critical value.    



### Approach

1. describe the algorithm colloqiually, in ~1 paragraph, ideally with schematic illustration 
2. write pseudocode as clearly and compeltely as you can, including all inputs and hyper-parameters.
1. describe the all evaulation criteria/metrics as clearly as you can.
  

## Results

### Illustrative Examples

These provide the intuition as to **when** the algorithm should and should not work well, as compared to the reference algorithms.

1. Describe the geometric intuition (in ~1 paragraph) as to why this algorithm should work well under certain contexts/s settings; ideally specify (all) the settings under which algorithm *could/will* get the right answer
answer
1. Provide an figure illustrating that the method achieves the goal in the setting.  Note that this figure should clearly indicate the simulated truth/optimal and the quantitative error of the algorithm, and compare to reference algs.




### Empericial Properties


 1. Describe (in words and equations) simulated example that demonstrates that the above intuitions hold empirically as well (this might be the above positive example).  
1. Run algorithm on >=10x trials, compute metric, plot distribution of metrics.
1. If the theory makes distributional assumptions, describe (in words and equations) simulations that extend beyond the limitations of the theory.
1. Run alg as before.


1. real data examples: 
  1. describe >=1 real data examples (ideally, use examples that previous authors have used to enable a fair comparison).
  1. run algs on real data, plot results that demonstrate that the performance also improves performance on real data examples, relative to previously existing tools.
  1. plot/state run time for each alg.
1. synthetic data analysis: generate data as close to real data as possible, and run same analysis, to assess the degree of credance we lend to the results on the real data.


### Theoretical Properties

1. Prove statistical theoretical properties about method (listed above), for when it is optimal/better than reference methods, and even better, also when it is not.
1. Provide worst case computational space and time requirements as a function of n & p, and possibly T (# of threads), and other data parameters such as K (# of cluster), d (# of dimensions embedded into), etc., for training, and possibly testing.



### Implementation Properties


Make a table of [pragmatic algorithm properties](https://github.com/neurodata/checklists/blob/master/algorithm_properties.md#pragmatic-properties). Columns are properties, rows are algorithms.


for a reasonable example, see my [signal subgraph paper](http://ieeexplore.ieee.org/document/6341752/), or see [markdown demo](https://github.com/neurodata/checklists/blob/master/Tutorials/MATLAB/algs_example/methods_paper_example.md) for a quickie alpha version.
