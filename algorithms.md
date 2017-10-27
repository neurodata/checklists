## Overview

This is my continually evolving recommendation of the steps to take to build an understanding and intuition about an algorithm. The details of this protocol are constantly being revised on the basis of extremely valuable feedback.  If there is something you don't love about it, or have an idea to make it better, please [suggest it](https://github.com/neurodata/checklists/issues/new) and mention @jovo!  Recall the two most important principles of data science:

1. [Look at it](https://www.youtube.com/watch?v=EF8GhC-T_Mo)
2. [Keep it simple](https://youtu.be/DWKijJ9n-VQ?t=45s)

## Decisions 

1. Plot a few samples of the raw data, as raw as possible (i.e. the whole multivariate time-series, rather than summary statistics), to justify the algorithm and simulation settings.
6. Describe the real data in detail, including of course sample size and dimensionality, the space each dimension lives in (e.g., binary, categorical, ordinal, real, network, image, etc.) as well as any other properties that you deem important for understanding performance of various algorithms.
1. Name the precise algorithm will you be evaluating and provide a reference.
1. Write pseudocode (as formally as you can) for the algorithm.
2. Describe in detail (as formally as you can) the toy simulation settings that you will be using to evaluate this algorithm. This should include at least two settings, one for which you suspect the algorithm will work well, and another for which you think it should not. To make any algorithm perform poorly simply requires changing the distribution of the *noise*,  e.g., k-means will not work if the clusters are centered around some means with non-spherically symmetric covariances.
3. Describe the evaluation criteria, including # of trials, metrics, visualizations, and/or summary statistics (as formally as you can) that you will be using to evaluate the performance of the algorithm. recall that the simulations will be samples from random variables, so running on a single sample will provide limited information, instead, run on many samples and visualize all the results.
4. Describe in detail (as formally as you can) the synthetic simulation settings that you will be using to evaluate this algorithm.  the synthetic simulation should mirror your real data as closely as possible, including sample size, dimensionality, and ideally, parameters.  if also parameters, describe how you will estimate the parameters that you will use in this synthetic data analysis. 



## Simulation

The purpose of this section is twofold: (i) get comfortable running the algorithm, (ii) understand when you expect the algorithm to work well, and when not.


### Generate toy simulation data

Code should always be tested to determine whether we can trust the results, this means testing to see that it works well when it should, and that it does not work well when it shouldn't.  Below we describe how to generate such simulations so that you can use them to test the code.

1. write the sampling/generative distributions that you will write to test the code. the simulation should have the following properties:
    1. you know exactly what the answer should be.  
    2. you expect the algorithm to perform very well (because it is easy for a given sample size)
1. write code to sample data from the above settings
1. write code to plot simulated data
2. plot simulated data, as raw as possible (ie, all observed variables, latent variables, and parameters)
3. report whether it looks "right"

Repeat steps 2-5 for a simulation setting for which the alg will *not* perform well (because it is difficult for a given sample size).  


### Analyze toy simulation data

Here we actually test the code on the two above described settings.  Because the results are random, it is important to repeat the analysis multiple times.

Note that we want to understand performance on simulated data, to help understand performance on real data. There are two different scenarios of interest for real data: (i) those for which we are given a gold standard answer (often called the "truth", but even more often is a noisy estimate of the truth, if the truth even exists), and (ii) those for which no gold standard is available. For case (i), for predictions, when possible do 10-fold cross-validation.  For case (ii), there are two natural options.  If the algorithm is optimizing some objective function, we can compare the objective function before and after analysis, to confirm that it is going in the right direction.  However, sometimes it is not doing that, in which case, we can instead compute  "discriminability" (see [repo](https://github.com/neurodata/discriminability), [tutorial](http://docs.neurodata.io/checklists/Tutorials/R/Discriminability/discriminability_tutorial.html)).  In particular, given multiple measurements from multiple samples, compute how relatively similar the measurements from the same sample are, both before and after applying the algorithm.  If the algorithm is useful, it should increase discriminability.

For both the easy and difficult simulations:

1. Do the following ~10x times:
    1. generate & plot simulated data
    1. run algorithm on simulated data
    1. plot results
    1. quantify performance (using >= 1 metrics)
2. summarize the results:
    1. write code to compute/visualize summary statistics
    1. summarize results



### Synthetic and Real Data Analysis

Now run the algorithm with synthetic data in exactly the same format as our real inputs. Everything, down to the exact data structures used, should match the exact format of the real data. In this step, the researcher will think about how to best wrap their classes/methods so as to have as few moving parts as possible in the actual use of the algorithm.

1. describe (as formally as you can) the synthetic simulation (this should merely be a change in sample size, dimensionality, and parameter values.
1. plot synthetic raw data, exactly as you have for the real data to visually compare.
1. write a function that calls the algorithm, accepting as inputs: (i) raw data and (ii) algorithmic parameters.
1. call function using synthetic data. 
1. generate plots to verify that the algorithm performs as expected on the synthetic data, using the same metrics & visualizations as for the toy data.

After the synthetic data step, the time to adapt to real data should be minutes, as theoretically the only thing that will need to be done is accepting the real data as input at this point. The rest should entirely be "plug and play" with the exact code used for the synthetic dataset:

6. run *exact same code* on real data as ran on synthetic, generating estimates, qualitative and quantitative results. 


Running algorithms is an art.  just because you can successfully reproduce somebody else's previous results, does *not* mean that you have mastered the art of running the algorithm.  In particuar, all algorithms have a number of exposed or hidden parameters, including for example convergence criteria.  By nature, authors of algorithms set default values of these appropriate for their applications, on their data and hardware.  So, failure to achieve good results using standard methods on problems for which they "ought" to do well often reflects failure of mastery of the algorithm, rather than the algorithm itself.  
