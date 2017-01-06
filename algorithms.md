
### (*[python notebook example](./Tutorials/Python/code_example.ipynb)*):

The goal of the below protocol is to:

1. determine whether you understand the basic principles of a given algorithm
2. can run it successfully
3. can evaluate its performance meaningfully




## Simulation Data

1. **Simulation** write the sampling/generative distributions that you will write to test the code (simuation has the property that you know exactly what the answer should be).  use a generating distribution for which you expect the algorithm to perform very well (because it is easy for a given sample size)
1. write code to sample data from the above settings
1. describe in words what you think the simulations will look like
1. write code to plot simulated data
2. plot simulated data, as raw as possible (ie, all observed variables, latent variables, and parameters)
3. report whether it looks "right"
2. repeat the above for a simulation setting for which the alg will *not* perform well (because it is difficult  for a given sample size)

## Simulation Analysis

1. write algorithm pseudocode
1. write algorithm code
1. describe in words how you think the algorithm will perform in this simulation
1. generate simulated data
1. run algorithm on simulated data
1. plot results in such 




-----
## Describe Approach

You will have to code the algorithm and evaluation code, so, describing the plan first is usually an effective strategy.

1. **Algorithm** write pseudocode as carefully as you can, typically using latex "algorithm" package. there are several examples here: 
http://arxiv.org/abs/1609.05148.
the structure is always the same:
    1. input: type & size of each input
    2. output: type and size of each output
    3. function name


    4. step-by-step instructions, comments where appropriate 

3. **Analysis** describe the following
    1. *Qualitative* visualizations per trial for qualitatively evaluating performance
    2. *Quantitative* "score" per trial for quantitatively evaluating performance
    3. *Summary Plot* visualization of quantitative scores over all trials (often a histogram)
    4. *P-value* test statistic (probably the quantitative score) and procedure for obtaining null distribution for above described score.
    
    

## Write Code
For each of these, either incorporate the code, or better yet, provide a link from the appropriate github repo:

4. qualitative evaluation (eg, figures) code per trial
5. quantitative evaluation code per trial
6. qualitative evaluation (eg, figures) over all experiments
7. quantitative evaluation over all experiments

## Run Experiments
### Simulation

for each simulation: 


### Simulated Analysis

for each simulation: 

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




