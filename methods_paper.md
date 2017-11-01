A good methods paper is organized by and has the components listed below.
For a reasonable example, see my [signal subgraph paper](http://ieeexplore.ieee.org/document/6341752/), or see [markdown demo](https://github.com/neurodata/checklists/blob/master/Tutorials/MATLAB/algs_example/methods_paper_example.md) for a quickie alpha version.




## Methods




### Setup


#### Notation:

- n = sample size
- p = observed dimensionality
- d = intrinsic dimensionality
- q = # of dimensions embedded into
- T = # threads
- x = sample realization, X = random variable
- x = scalar, **x** = vector/matrix
- i = indexes samples
- K = # classes / clusters
- F = density, f = probability distribution/mass function

#### Setting

1. Task: Describe the task colloqiually, for example, we are developing a nonparametric 2-sample test.
1. Desiderata: State the desiderata of the method, [algorithm_properties] contains a good list.
1. Goal: Describe the statistical goal formally. Note that the statistical goal is defined by the constituents of Statistical Decision Theory, listed below. Some of these might be implicit, although it is better to make them explicit.  For example,  `H0: F=G` vs. `HA: F != G` is a good start for 2-sample testing, but then we must also know that `X ~ F`, what space does `X` live in?  Also, what statistical model do `F` and `G` live in? Gaussian? The loss for hypothesis testing is 0-1, and the risk is almost always to maximize power under a given critical value.    
    1. sample space, \Xi
    2. action space, \mathcal{A}
    3. statistical model under consideration, \mathcal{M}
    4. loss function, \ell
    5. decision rule(s) under consideration, \delta 
    6. risk functional, \mathbb{R}.
4. Background: Describe all the background material required to understand the proposed approach.




### Approach

1. Approach: Describe the algorithm colloqiually, in ~1 paragraph, ideally with schematic illustration 
2. Pseudocode: Write pseudocode as clearly and compeltely as you can, including all inputs and hyper-parameters.
1. Metrics: Describe the all evaulation criteria/metrics as clearly as you can.
  

## Results

### Illustrative Examples

These provide the intuition as to **when** the algorithm should and should not work well, as compared to the reference algorithms.

1. Describe the geometric intuition (in ~1 paragraph) as to why this algorithm should work well under certain contexts/s settings; ideally specify (all) the settings under which algorithm *could/will* get the right answer
answer
1. Provide an figure illustrating that the method achieves the goal in the setting.  Note that this figure should clearly indicate the simulated truth/optimal and the quantitative error of the algorithm, and compare to reference algs.


### Theoretical  Properties

#### Statistical Properties

**Prove** (or comment on the difficulty of proving) each of the below properties:
1. unbiasedness under M
2. consistency (or dominance) under M
3. robustness under misspecification M'
4. efficiency (or relatively efficiency) under model M in terms of n, p, and d. 
5. hyper-parameterness: the # of and ease of estimating them




#### Computational Properties

1. **Provide/proof** worst case computational space and time requirements as a function of n, p, and possibly d  and T.  When appropriate, also include other model parameters such as K (# of clusters) or d' (# of dimensions embedded into), etc. 
    1. For supervised methods, provide the above for both training and **testing**.




### Empericial Properties


1. **Describe** (in words and equations) simulated examples that demonstrates that the above intuitions hold empirically as well (this might be the above positive example).  Ideally this is a simulation benchmark suite that spans the interesting space of different values for {n,p,d}.
    1. **Run** algorithm on >=10x trials, compute metrics, plot distribution of metrics.
1. If the theory makes distributional assumptions, **describe** (in words and equations) simulations that extend beyond the limitations of the theory.
    1. **Run** alg as above.
1. [Computational Properties (in order of importance)]:
    1. time & space for training & testing
    2. scale up & scale out
    3. price
1. **Real Data** examples: 
    1. **Describe** >=1 real data examples (ideally, use a benchmark suite that previous authors have used to enable a fair comparison).
    1. **Run** algs on real data, plot results that demonstrate that the performance also improves performance on real data examples, relative to previously existing tools.
    1. **Plot/State** computational properties for each alg on real data.
1. **Synthetic Data Analysis**: Generate data as close to real data as possible, and run same analysis, to assess the degree of credance we lend to the results on the real data.




### Implementational Properties

State in a sentence or two the degree to which the implementation satisfies each of the above

1. Findable: open source license & DOI
2. Installable: instructions & package manager & container
3. Runable/Re-usable: docs & demo
4. Modifiable: vignettes & tests
5. Benchmarkable: docs & figs


