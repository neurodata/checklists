# Demonstrate Basic Working Knowledge

To determine whether you can successfully run an algorithm, follow these steps (*[possibly outdated python notebook example](./Tutorials/Python/code_example.ipynb)*):

## Describe stuff
1. **Algorithm** write pseudocode as carefully as you can, typically using latex "algorithm" package. there are several examples here: 
http://arxiv.org/abs/1609.05148.
the structure is always the same:

  1. input: type & size of each input
  2. output: type and size of each output
  3. function name
  4. step-by-step instructions, comments where appropriate
  


3. **Simulation** write the sampling/generative distributions that you will write to test the code (simuation has the property that you know exactly what the answer should be), including:
	1. a simulation setting for which the alg with perform very well
	2. a simulation setting for which the alg will *not* perform well
5. **Analysis** descirbe the following
   5. *Qualitative* visualizations per trial for qualitatively evaluating performance
   6. *Quantitative*  "score" per trial for quantitatively evaluating performance
   6. *Summary Plot*  visualization of quantitative scores over all trials (often a histogram)
   5. *P-value* test statistic and procedure for obtaining null distribution for above described score.


## Write Code

8. generate simulated data for both settings
10. algorithm code
11. qualitative evaluation code per trial
12. quantitative evaluation code per trial
13. qualitative evaluation over all experiments
14. quantitative evaluation over all experiments

## Experiments
### Simulated Data
#### Simulation

for each simulation: 

8. describe in words what you think the simulations will look like
9. plot simulated data
10. report whether it looks "right"

#### Simulated Analysis

for each simulation: 

1. describe in words how you think the algorithm will perform in this simulation
13. run alg on simulation 10 times  (randomizing simulation parameters)
13. plots results for each iteration use qualitative evaluation as described above
14. include quantitative metric for each in title
15. plot summary statistics
16/ report p-value in title
16. report degree of accuracy of your predictions, and if mismatch exists, explain.


# Demonstrate Some Real Data Utility

## Real Data 
4. Describe in as much detail as possible, including number of samples, the space each sample lives in, and any indiosyncracies (eg, missing data, NaNs, etc.), for both
	1. the motivating dataset
	2. dataset for which somebody else has run this algorithm on it (if possible)  
for each real dataset:
17. predict performance accuracy of the algorithm
18. run *exact same code* on real data as ran on simulations, generating estimates, qualitative and quantitative results. 
19. document performance accuracy relative to predictions, modify understanding as appropriate.


## Synthetic Data
1. describe sythetic data generative process to mirror the real data as closely as possible
2. simulate synthetic data
3. plot synthetic data
4. qualitatively evaluate how it looks both similar and different from real data
6. predict performance accuracy on synthetic data
5. run analysis on synthetic data
6. document performance accuracy relative to predictions, modify understanding as appropriate


# Evaluate in Greater Detail

## theoretical properties

1. statistical considerations
	1. feasible region of action space ($\Theta$)
	1. "consistent region" of action space (ie, region for which $E[\theta_n]=\theta_*$)
	2. complexity (size) of action space (eg, number of parameters, $p=|\Theta|$)
	3. convergence rate (eg, $P[ || \theta_n - \theta_* || < \delta] > \epsilon(n,d,p,\theta_*)$)
	3. how robust to which model misspecifications (eg, if $\Theta \neq \Theta_*$, any guarantees on $E[\theta_n]$?)
	3. is it numerically stable?
2. computational considerations: theoretical complexity in terms of sample size (n), dimensionality (d), and ideally number of cores (t)

| 		| space | time 	|
| :--- 	| :--- 	| 		|
| train |  		| 		| 
| test 	| 		| 		| 



## Empirical Properties

2. simulated accuracy
	1. empirical bias on simulated benchmark suite restricted to the consistent space
	3. empirical bias on simulated benchmark suite restricted to the action space
	4. empirical variance on simulated benchmark suite restricted to the action space
	3. empirical robustness in above mentioned model misspecifications
2. wall time/space for training and testing as a function of n, d, and t
4. accuracy on real data benchmark suite
3. empirical numerical stability



## pragmatic properties

2. code available? 
5. installation ease, including:
	1. clear instructions?
	2. dependencies easy to deal with?
	3. 1-line installable (eg, via CRAN or pip)?
	6. virtualized (eg, in docker)?
6. run ease 
	1. what language is it implemented in?
	3. how many hyper-parameters
	2. for each tunable parameter (or hyper-parameter)
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


# Benchmark Against Other Algorithms

1. describe simulated settings---via formal generative process---for:
  1. one setting for which you suspect alg A will perform very well
  2. one setting for which you suspect alg A will perform poorly, but alg A' will perform well (for some A')
  3. simulated benchmark suite
  4. real data benchmark suite

2. describe empirical metrics for evaluation, including (statistical, computational) per trial, meaning need to specify
  1. what is the statistical metric (eg, mean squared error)
  2. what is the computational metric (eg, walltime per iteration per core)

3. list set of alg's under consideration, including hyper-parameter settings for each, provide citation for each
4. run each alg on each simulation on *same hardware*, record (stats,comp) numbers for each trial
5. plot pairwise comparisons for each trial
6. compute statistics in reference to benchmark for each metric and trial
7. compute summary statistics for each metric over set of trials

