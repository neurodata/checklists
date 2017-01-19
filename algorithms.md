## Overview

1. We will learn the following in order by following the below steps?
    1. Do you understand the algorithm sufficiently well to run it at all? 
    2. Sanity check: does it work as expected on simple toy examples? 
    3. Real data run: does it work as expected on real data? 
1. An example? Here is a (*[python notebook example of an older format](https://github.com/neurodata/checklists/blob/master/Tutorials/Python/code_example.ipynb)*)


The details of this protocol are constantly being revised on the basis of extremely valuable feedback.  If there is something you don't love about it, or have an idea to make it better, please [suggest it](https://github.com/neurodata/checklists/issues/new)!


## Do you understand the algorithm sufficiently well to run it at all?


1. write *detailed* pseudocode
1. write algorithm code 
1. write (in plain language) the conditions under which you think this algorithm will perform well, and those under which you think it will perform poorly.  If you want to be formal, you can write the particular model under which the algorithm has statistical guarantees.
1. find two datasets for which you know what the answer will be (ideally real, but simulated is ok), including: (i) one which you expect the algorithm will do well on, and (ii) one which you expect it will *not* do well on. The reason for these is: of course you want to confirm that it does well when it should, but it is easy to accidentally write code where the algorithm also does well when it shouldn't.  For example, if the algorithm always outputs the same answer, you would be able to determine that for these.
1. For each, describe the # of dimensions, # of samples, and any other salient features that the algorithm would require to run (e.g., file type, etc.).
1. Plot raw data, as raw as possible (i.e. the whole multivariate time-series, rather than summary statistics).
1. State predictions of how well you expect the algorithm to run on these two datasets.

If you think you understand and can run this algorithm on your data, skip to [#Real].



##Sanity check: does it work as expected on simple toy examples?

### Generate toy simulation data

Code should always be tested to determine whether we can trust the results, this means testing to see that it works well when it should, and that it does not work well when it shouldn't.  Below we describe how to generate such simulations so that you can use them to test the code.

1. write the sampling/generative distributions that you will write to test the code. the simulation should have the following properties:
    1. you know exactly what the answer should be.  
    2. you expect the algorithm to perform very well (because it is easy for a given sample size)
1. write code to sample data from the above settings
1. describe in words what you think the simulations will look like
1. write code to plot simulated data
2. plot simulated data, as raw as possible (ie, all observed variables, latent variables, and parameters)
3. report whether it looks "right"
2. repeat the above for a simulation setting for which the alg will *not* perform well (because it is difficult for a given sample size).  


### Analyze toy simulation data

Here we actually test the code on the two above described settings.  Because the results are random, it is important to repeat the analysis multiple times.

Note that we want to understand performance on simulated data, to help understand performance on real data. There are two different scenarios of interest for real data: (i) those for which we are given a gold standard answer (often called the "truth", but even more often is a noisy estimate of the truth, if the truth even exists), and (ii) those for which no gold standard is available. For case (i), for predictions, when possible do 10-fold cross-validation.  For case (ii), the best thing we can do is compute "discriminability" (see [repo](https://github.com/neurodata/discriminability), [tutorial](http://docs.neurodata.io/checklists/Tutorials/R/Discriminability/discriminability_tutorial.html)).  In particular, given multiple measurements from multiple samples, compute how relatively similar the measurements from the same sample are, both before and after applying the algorithm.  If the algorithm is useful, it should increase discriminability.

1. describe in words how you think the algorithm will perform in the easy simulation
1. generate simulated data
1. run algorithm on simulated data
1. plot results 
1. describe the metric that you will use to quantify the results when given the truth
1. if real data does not have a reasonable "gold standard", also describe metric to quantify performance without gold standard
1. write code to quantify the results
1. quantify performance (using 1 or both metrics)
1. repeat 10x on the easy simulation, only plot >=1x 
1. repeat 10x on the hard simulation, only plot >=1x


### Summarize Toy Simulation Analysis

After running the code multiple times on a couple different scenarios, we determine whether the algorithm works "well" in general when it should, and works poorly in general, when it should not work well.

1. describe how you will visualize the population results
1. describe how you will compute population performance
1. write code to plot population results
1. write code to compute population performance
1. run qualitative population analysis (ie, plot summary plots) on the simple simulation
1. run quantitative population analysis (ie, compute population performance) on the simple simulation
1. repeat the above 2 steps on the difficult simulation
1. summarize performance on both settings



##Real data run: does it work as expected on real data?



### Synthetic Data Analysis

Here, we will make a final pass over our algorithm with synthetic data in exactly the same format as our real inputs. Everything, down to the exact data structures used, should match the exact format the real data is anticipated to appear in. By this step, the researcher should know the format of the real data, and have an idea of how the real data will fit in to the algorithm. Also in this step, the researcher will think about how to best wrap their classes/methods so as to have as few moving parts as possible in the actual use of the algorithm.

1. describe how you will simulate the raw data, using formulas as necessary, using your simulation developed above (this should merely be changing parameters of the above simulations).
1. plot synthetic raw data, as raw as possible, and verify that it matches the raw data to the extent expected.
1. describe your expectations for algorithmic performance on synthetic data
1. write a function that calls any moving parts to your algorithm, and accepts as inputs the minimum raw data and algorithmic parameters only.
1. call function using synthetic data. 
1. generate plots to verify that the synthetic dataset performs exactly as expected, using quantitative descriptions wherever possible.

NOTE: after the synthetic data step, the time to adapt to real data should be minutes, as theoretically the only thing that will need to be done is accepting the real data as input at this point. The rest should entirely be "plug and play" with the exact code used for the synthetic dataset. 


## Real Data Analysis


3. predict performance accuracy of the algorithm for each dataset
4. run *exact same code* on real data as ran on synthetic, generating estimates, qualitative and quantitative results. 
5. document performance accuracy relative to predictions, modify understanding as appropriate.
1. suggest ways to improve performance
