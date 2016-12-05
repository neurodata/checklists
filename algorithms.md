

To determine whether you can successfully run an algorithm, follow these steps (*[python notebook example](./Tutorials/Python/code_example.ipynb)*):

## Describe Approach
1. **Algorithm** write pseudocode as carefully as you can, typically using latex "algorithm" package. there are several examples here: 
http://arxiv.org/abs/1609.05148.
the structure is always the same:
    1. input: type & size of each input
    2. output: type and size of each output
    3. function name
    4. step-by-step instructions, comments where appropriate 

2. **Simulation** write the sampling/generative distributions that you will write to test the code (simuation has the property that you know exactly what the answer should be), including:
    1. a simulation setting for which the alg with perform very well
    2. a simulation setting for which the alg will *not* perform well
3. **Analysis** describe the following
    1. *Qualitative* visualizations per trial for qualitatively evaluating performance
    2. *Quantitative* "score" per trial for quantitatively evaluating performance
    3. *Summary Plot* visualization of quantitative scores over all trials (often a histogram)
    4. *P-value* test statistic (probably the quantitative score) and procedure for obtaining null distribution for above described score.


## Write Code
For each of these, provide a link from the appropriate github repo:

1. generate simulated data for both settings
2. plotting code for simulated data
3. algorithm code
4. qualitative evaluation (eg, figures) code per trial
5. quantitative evaluation code per trial
6. qualitative evaluation (eg, figures) over all experiments
7. quantitative evaluation over all experiments

## Run Experiments
### Simulation

for each simulation: 

1. describe in words what you think the simulations will look like
2. plot simulated data, as raw as possible (ie, all observed variables, latent variables, and parameters)
3. report whether it looks "right"

### Simulated Analysis

for each simulation: 

1. describe in words how you think the algorithm will perform in this simulation
2. run alg on simulation 10 times  (randomizing simulation parameters)
3. plots results for each iteration use qualitative evaluation as described above
4. include quantitative metric for each in title
5. plot summary statistics
6. report p-value in title
7. report degree of accuracy of your predictions, and if mismatch exists, explain.

### Real Data 

for each real dataset:

1. Describe in as much detail as possible, including number of samples, the space each sample lives in, and any indiosyncracies (eg, missing data, NaNs, etc.), for both
    1. the motivating dataset
    2. dataset for which somebody else has run this algorithm on it (if possible)
2. plot raw data, as raw as possible (i.e. all observed variables, latent variables, and parameters)
3. predict performance accuracy of the algorithm
4. run *exact same code* on real data as ran on simulations, generating estimates, qualitative and quantitative results. 
5. document performance accuracy relative to predictions, modify understanding as appropriate.




