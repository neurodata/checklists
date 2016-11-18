To determine whether you can successfully run an algorithm, follow these steps (*[possibly outdated python notebook example](./Tutorials/Python/code_example.ipynb)*):

## Describe stuff
1. **Algorithm** write pseudocode as carefully as you can, typically using latex "algorithm" package. there are several examples here: 
http://arxiv.org/abs/1609.05148.
the structure is always the same:

  1. input: type & size of each input
  2. output: type and size of each output
  3. function name
  4. step-by-step instructions, comments where appropriate
  


3. **Simulation** write the sampling/generative distributions that you will write to test the code (it must have the property that you know exactly what the answer should be)
5. **Analysis** descirbe the following
   5. *Qualitative* visualizations per trial for qualitatively evaluating performance
   6. *Quantitative*  metrics per trial for quantitatively evaluating performance
   6. *Summary Plot*  visualization of summary statistic described above (often a histogram)
   5. *P-value* test statistic and procedure for obtaining null distribution for above described metric.


## Write Code
8. generate simulated data
10. algorithm code
11. qualitative evaluation code
12. quantitative evaluation code

## Experiments
### Simulated Data
#### Simulation
8. describe in words what you think the simulations will look like
9. plot simulated data
10. report whether it looks "right"

#### Simulated Analysis
1. describe in words how you think the simulation will perform
13. run alg on simulation 10 times  (randomizing simulation parameters)
13. plots results for each iteration use qualitative stuff as described above
14. include quantitative metric for each in title
15. plot summary statistics and report p-value
16. report degree of accuracy of your predictions, and if mismatch exists, explain.

### Real Data 
4. Describe in as much detail as possible, including number of samples, the space each sample lives in, and any indiosyncracies (eg, missing data, NaNs, etc.), for both
	1. the motivating dataset
	2. dataset for which somebody else has run this algorithm on it (if possible)  
17. predict performance accuracy of the algorithm each real data set
18. run *exact same code* on real data as ran on simulations, generating estimates, qualitative and quantitative results. 
19. document performance accuracy relative to predictions, modify understanding as appropriate


### Synthetic Data
1. describe sythetic data generative process to mirror the real data as closely as possible
2. simulate synthetic data
3. plot synthetic data
4. qualitatively evaluate how it looks both similar and different from real data
6. predict performance accuracy on synthetic data
5. run analysis on synthetic data
6. document performance accuracy relative to predictions, modify understanding as appropriate

