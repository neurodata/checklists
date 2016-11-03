Follow the following steps to write any new code:

**[Python Notebook Example](./Tutorials/Python/code_example.ipynb)**

### Describe stuff
1. **Algorithm** write pseudocode as carefully as you can, typically using latex "algorithm" package. there are several examples here: 
http://arxiv.org/abs/1609.05148.
the structure is always the same:

  1. input: type & size of each input
  2. output: type and size of each output
  3. function name
  4. step-by-step instructions, comments where appropriate
  
3. **Simulation** write the sampling/generative distributions that you will write to test the code (it must have the property that you know exactly what the answer should be)
5. **Qualatative Analysis** describe visualizations for qualitatively evaluating performance
6. **Quantitative Analysis** determine metrics for quantitatively evaluating performance

### Write Code
8. generate simulated data
10. algorithm code
11. qualitative evaluation code
12. quantitative evaluation code

### Evaluate Stuff
8. describe in words what you think the simulations will look like
9. plot simulated data
10. report whether it looks "right"


13. run quantitatively evaluate simulations (use >= 10 repititions randomizing simulation parameters, plots *all* results)
14. quantitatively evaluate via a plot of quantitative evaluation for each repitition in both cases
15. Report p-value using meaningful test statistic to determine whether the alg worked better than chance in the 2 cases. 
15. document the degree to which your predictions of which situations the algorithm would perform well or not, were accurate, and modify understanding as appropriate. pay particular attention to limitations of the evalation setting (simulation design and assessment criteria)
16. get 1 real data in exact same format as the simulation
17. predict performance accuracy of the algorithm
18. run *exact same code* on real data, generating estimates, qualitative and quantitative results. 
19. document performance accuracy relative to predictions, modify understanding as appropriate
20. apply benchmark algorithm also to real data, generating estimates, qualitative and quantitative results.
21. compare performance, highlighting limitations of these performance.
