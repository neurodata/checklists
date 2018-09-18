A good methods paper is organized by and has the components listed below.
For a reasonable example, see my [signal subgraph paper](http://ieeexplore.ieee.org/document/6341752/), or see [markdown demo](https://github.com/neurodata/checklists/blob/master/Tutorials/MATLAB/algs_example/methods_paper_example.md) for a quickie alpha version.




## Methods


### Setup


#### Suggested Notation:

- n = sample size
- p = observed dimensionality
- d = intrinsic dimensionality
- q = # of dimensions embedded into
- T = # threads
- x = sample realization, X = random variable
- x = scalar, **x** = vector, **X** = matrix
- i = indexes samples
- K = # classes / clusters
- F = density, f = probability distribution/mass function

#### Setting

1. **Task**: Describe the task colloqiually, for example, we are developing a nonparametric 2-sample test.
1. **Desiderata**: State the desiderata of the method, [algorithm_properties] contains a good list.
1. **Goal**: Describe the statistical goal formally. Note that the statistical goal can be estimation, testing, prediction, etc.  For example,  `H0: F=G` vs. `HA: F != G` is a good start for 2-sample testing, but then we must also know that `X ~ F`, what space does `X` live in?  Also, what statistical model do `F` and `G` live in? Gaussian?
4. **Background**: Describe all the background material required to understand the proposed approach.




### Approach

1. **Approach**: Describe the algorithm colloquially, in ~1 paragraph, ideally with schematic illustration
2. **Pseudocode**: Write pseudocode as clearly and completely as you can, including all inputs and hyper-parameters.
1. **Metrics**: Describe the all evaluation criteria/metrics as clearly as you can.


## Results

### Illustrative Examples

These provide the intuition as to **when** the algorithm should and should not work well, as compared to the reference algorithms.

1. **Describe** the geometric intuition (in ~1 paragraph) as to why this algorithm should work well under certain contexts/s settings; ideally specify (all) the settings under which algorithm *could/will* get the right answer
answer
1. **Name** the benchmark reference algorithms to compare to.
1. **Plot** an illustrative figure that the method achieves the goal in the setting.  Note that this figure should clearly indicate the simulated truth/optimal and the quantitative error of the algorithm, and compare to reference algs.


### Theoretical  Properties

#### Statistical Properties

1. **Prove** (or comment on the difficulty of proving) each of the below foundational properties:
    1. unbiasedness under M
    2. consistency (or dominance) under M
    3. robustness under misspecification M'
    4. efficiency (or relatively efficiency) under model M in terms of n, p, and d.
2. **Prove** (or comment on the difficulty of proving) any additional properties that you desire of your estimator, eg, non-negativity.
3. **Discuss** the hyper-parameters of your estimator, including
    1. the # of hyper-parameters
    2. ease of estimating them (e.g., are they nested (like in PCA) or not (like k-means)).



#### Computational Properties

1. **State/prove** worst case computational *time* requirements as a function of n, p, and possibly d  and T.  When appropriate, also include other model parameters such as K (# of clusters) or d' (# of dimensions embedded into), etc.  For supervised methods, provide the above for both training and *testing*.
2. **Sampe** for *space*




### Empirical Properties


#### Simulated Data Analysis

1. **Describe** (in words and equations) simulated examples that demonstrates that the above intuitions hold empirically as well (this might be the above positive example).  Ideally this is a simulation benchmark suite that spans the interesting space of different values for {n,p,d}. Note that for testing, it is important to characterize both power and false positive rate.
1. **Plot** the results in terms of the previously described metrics, having run on >=10x trials to obtain means and standard errors of performance. Note that these are *plots*, not tables.
1. [If the theory makes distributional assumptions]
    1. **Describe** (in words and equations) simulations that extend beyond the limitations of the theory.
    1. **Plot** results as above.
1. [Computational Properties (in order of importance)]:
    1. time & space for training & testing
    2. scale up & scale out
    3. price

#### Real Data Analysis:

1. **Describe** >=1 real data examples (ideally, use a benchmark suite that previous authors have used to enable a fair comparison).
1. **Plot** results that demonstrate on real data that which you demonstrated on simulated data. Note that each metric/analysis should also be applied to simulated data prior to its use on real data.
1. **Plot/State** computational properties on real data.
1. **Synthetic Data Analysis**: Generate data as close to real data as possible, and run same analysis, to assess the degree of credence we lend to the results on the real data.



### Implementational Properties

**State** in a sentence or two the degree to which the implementation satisfies each of the below properties:
1. Findable: open source license & DOI
2. Installable: instructions & package manager & container
3. Runable/Re-usable: docs & demo
4. Modifiable: vignettes & tests
5. Benchmarkable: docs & figs
