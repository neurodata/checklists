## Overview

This is my continually evolving recommendation of the steps to take to build an understanding and intuition about an algorithm. The details of this protocol are constantly being revised on the basis of extremely valuable feedback.  If there is something you don't love about it, or have an idea to make it better, please [suggest it](https://github.com/neurodata/checklists/issues/new) and mention @jovo!  Recall the two most important principles of data science:

- [**Look at it**](https://www.youtube.com/watch?v=EF8GhC-T_Mo)
- [**Keep it simple**](https://youtu.be/DWKijJ9n-VQ?t=45s)

The basic steps are listed below:

1. Decide some stuff
2. Numerical experiments where truth is known (simulated data)
3. Real data analysis


## Decisions 

1. Plot a few samples of the raw data to **look at them**, as raw as possible (i.e. the whole multivariate time-series, rather than summary statistics), to justify the algorithm and simulation settings. More figures is better.
6. Describe the real data in detail, including of course sample size and dimensionality, the space each dimension lives in (e.g., binary, categorical, ordinal, real, network, image, etc.) as well as any other properties that you deem important for understanding performance of various algorithms.
1. Name the precise algorithm will you be evaluating and provide a reference where possible. If it is your own algorithm, is it the **simplest** possible algorithm that might work? If not, simplify.
1. Write pseudocode (as formally as you can) for the algorithm.
2. Describe in detail (as formally as you can) the **simplest** parametric model that you will be using to evaluate this algorithm. This model should have the property that you can change a 1 dimensional parameter to make vary the performance of your algorithm from very poor to very good.  For example,  e.g., k-means will not work if the clusters are centered around some means with non-spherically symmetric covariances. Therefore, a 1 dimensional parameter is the cross-correlation between variables for a 2-dimensional Gaussian mixture model setting, where both covariances are the same, and the priors are equal, and K=2.
3. Describe the evaluation criteria, including # of trials, metrics, visualizations, and/or summary statistics (as formally as you can) that you will be using to evaluate the performance of the algorithm. recall that the simulations will be samples from random variables, so running on a single sample will provide limited information, instead, run on many samples and visualize all the results.
4. [Reach] Describe in detail (as formally as you can) the synthetic simulation settings that you will be using to evaluate this algorithm.  The synthetic simulation should mirror your real data as closely as possible, including sample size, dimensionality, and ideally, parameters.  Describe how you will estimate the parameters from the real data that you will use in this synthetic data analysis. 



## Numerical Experiments 

### Simulations

The purpose of this section is twofold: (i) get comfortable running the algorithm, (ii) understand when you expect the algorithm to work well, and when not. Code should always be tested to determine whether we can trust the results, this means testing to see that it works well when it should, and that it does not work well when it shouldn't.  There are three important class of simulations:

- **Easy data**: you believe the algorithm should get essentially perfect accuracy.
- **Hard data**: you believe the algorithm should perform relatively poorly, ideally because the noise statistics of the simulation are mismatched with the intuition/theory associated with the real data.
- **Synthetic data**: everything, down to the exact data structures used, should match the exact format of the real data. In other words, the difference between running the algorithm on synthetic data and real data is that you merely call a different dataset.

To generate each of these requires a parametric data model.  The difference between the easy and hard data are is merely the parameters, and in particular, merely the signal to noise ratio. For example, if we were evaluating a test on the difference between two populations, we could vary the difference of the means from very large (easy) to very small (hard).  More generally, one should describe a 1-dimensional parameter that one can vary to modulate the difficulty of the simulation.  The difference between the easy/hard data, and the synthetic data, is merely (1) sample size, (2) dimensionality, and (3) parameter settings.  In particular, these three properties should match the real data to the extent possible.  This way, when you run the analysis on the real data, the only thing that changes are the values of the arrays.


I require that you do at least do easy data to obtain evidence suggesting your algorithm can work well sometimes, and i strongly recommend you also do synthetic data to confirm that your algorithm can perform at all on data like the real data. I typically do a 1-dimensional parameter sweep to characterize the operating characteristics of the algorithm, and therefore understanding a bit about how I expect it to perform under a variety of settings. Regardless, for each setting, do the following:


1. Write code to sample data from the model. 
2. Write code to plot simulated data.
3. Write the sample size, dimensionality, and parameter values for the current setting. 
4. Plot simulated data, as raw as possible (ie, all observed variables, latent variables, and parameters) to obtain evidence that the simulation is working as expected.

Note that the first two steps are only required once, and can be re-used for each setting. Doing it this way reduces the bugs because the only thing that changes across settings are a few constants and parameters.



### Analysis

Here we actually test the algorithm on the various settings.  Because the results are random, it is important to repeat the analysis multiple times. Note that we want to understand performance on simulated data, to help understand performance on real data. There are two different scenarios of interest for real data: 

- Those for which we are given a *gold standard* answer (often called the "truth", but even more often is a noisy estimate of the truth, if the truth even exists).  For these, we typically do a 10-fold cross-validation to assess performance and choose parameters. 
- Those for which no gold standard is available, in which case there two natural options:  
    - If the algorithm is optimizing some objective function, we can compare the objective function before and after analysis, to confirm that it is going in the right direction.  
    - If we have multiple measurements from the same subject or class,  we can instead compute  "discriminability" (see [repo](https://github.com/neurodata/discriminability), [tutorial](http://docs.neurodata.io/checklists/Tutorials/R/Discriminability/discriminability_tutorial.html)).  

Regardless of the setting, the analysis follows the following steps:

1. Do the following ~10x times:
    1. generate & plot simulated data
    1. run algorithm on simulated data
    1. plot results
    1. quantify performance (using >= 1 metrics)
2. summarize the results:
    1. write code to compute/visualize summary statistics
    1. summarize results



## Real Analysis

Now run the algorithm with synthetic data in exactly the same format as our real inputs. Everything, down to the exact data structures used, should match the exact format of the real data. In this step, the researcher will think about how to best wrap their classes/methods so as to have as few moving parts as possible in the actual use of the algorithm.  I strongly recommend steps 2 & 3 below.

1. Write a function that calls the algorithm, accepting as inputs: (i) raw data and (ii) algorithmic parameters.
1. Call function using synthetic data. 
1. Generate plots to verify that the algorithm performs as expected on the synthetic data, using the same metrics & visualizations that you will on the real data.
2. Run *exact same code* on real data as ran on synthetic, generating estimates, qualitative and quantitative results. 

Note that after the synthetic data step, the time to adapt to real data should be minutes, as theoretically the only thing that will need to be done is accepting the real data as input at this point. The rest should entirely be "plug and play" with the exact code used for the synthetic dataset.


Running algorithms is an art.  just because you can successfully reproduce somebody else's previous results, does *not* mean that you have mastered the art of running the algorithm.  In particuar, all algorithms have a number of exposed or hidden parameters, including for example convergence criteria.  By nature, authors of algorithms set default values of these appropriate for their applications, on their data and hardware.  So, failure to achieve good results using standard methods on problems for which they "ought" to do well often reflects failure of mastery of the algorithm, rather than the algorithm itself.  
