Follow the following steps to write any new code:

**[Example here](./Tutorials/Python/code_example.ipynb)**

1. write pseudocode as carefully as you can, typically using latex "algorithm" package. there are several examples here: 
http://arxiv.org/abs/1609.05148.
the structure is always the same:

  1. input: type & size of each input
  2. output: type and size of each output
  3. function name
  4. step-by-step instructions, comments where appropriate
  
3. describe two different simulations settings and their parameters (not two different ways of running the algorithm) (possibly in pseudocode if necessary) that you will write to test the code
  1. one example for which you believe the algorithm will do well
  2. one example for which you believe the algorithm will not do well but it is possible for a different algorithm to do well
5. choose visualizations for qualitatively evaluating performance
6. specify metrics for quantitatively evaluating performance
8. write code generating simulated data
9. plot simulated data
10. write algorithm code
11. write qualitative evaluation code
12. write quantitative evaluation code
13. run + quantitatively evaluate simulations (use >= 10 random repititions, plots *all* results)
14. qualitatively evaluate via a plot of quantitative evaluation for each repitition)
15. document the degree to which your predictions of which situations the algorithm would perform well or not, were accurate, and modify understanding as appropriate. pay particular attention to limitations of the evalation setting (simulation design and assessment criteria)
16. get 1 real data in exact same format as the simulation
17. predict performance accuracy of the algorithm
18. run *exact same code* on real data, generating estimates, qualitative and quantitative results. 
19. document performance accuracy relative to predictions, modify understanding as appropriate
20. apply benchmark algorithm also to real data, generating estimates, qualitative and quantitative results.
21. compare performance, highlighting limitations of these performance.
