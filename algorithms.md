
### (*[python notebook example](./Tutorials/Python/code_example.ipynb)*):

The goal of the below protocol is to:

1. determine whether you understand the basic principles of a given algorithm
2. can run it successfully
3. can evaluate its performance meaningfully


## Simulation Data

Code should always be tested to determine whether we can trust the results, this means testing to see that it works well when it should, and that it does not work well when it shouldn't.  Below we describe how to generate such simulations so that you can use them to test the code.

1. write the sampling/generative distributions that you will write to test the code. the simulation should have the following properties:
    1. you know exactly what the answer should be.  
    2. you expect the algorithm to perform very well (because it is easy for a given sample size)
1. write code to sample data from the above settings
1. describe in words what you think the simulations will look like
1. write code to plot simulated data
2. plot simulated data, as raw as possible (ie, all observed variables, latent variables, and parameters)
3. report whether it looks "right"
2. repeat the above for a simulation setting for which the alg will *not* perform well (because it is difficult  for a given sample size).  


## Simulation Analysis

Here we actually test the code on the two above described settings.  Because the results are random, it is important to repeat the analysis multiple times.

1. write algorithm pseudocode
1. write algorithm code
1. describe in words how you think the algorithm will perform in the easy simulation
1. generate simulated data
1. run algorithm on simulated data
1. plot results 
1. describe the metric that you will use to quantify the results
1. write code to quantify the results
1. quantify performance
1. repeat 10x on the easy simulation
1. repeat 10x on the hard simulation

## Summarize Simulation Analysis

After running the code multiple times on a couple different scenarios, we determine whether the algorithm works "well" in general when it should, and works poorly in general, when it should not work well.

1. describe how you will visualize the population results
1. describe how you will compute population performance
1. write code to plot population results
1. write code to compute population performance
1. run qualitative population analysis (ie, plot summary plots) on the simple simulation
1. run quantitative population analysis (ie, compute population performance) on the simple simulation
1. repeat the above 2 steps on the difficult simulation


## Real Data Analysis

1. Find two different real datasets, at least 1 for which somebody else has evidence that there is "signal"
1. For each, describe the # of dimensions, # of samples, and any other salient features
2. plot raw data, as raw as possible (i.e. all observed variables, latent variables, and parameters)
3. predict performance accuracy of the algorithm for each dataset
4. run *exact same code* on real data as ran on simulations, generating estimates, qualitative and quantitative results. 
5. document performance accuracy relative to predictions, modify understanding as appropriate.






