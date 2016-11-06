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
5. Single trial analysis
   5. **Qualitative Analysis** describe visualizations for qualitatively evaluating performance
   6. **Quantitative Analysis** determine metrics for quantitatively evaluating performance
6. Multi-trial analysis
   5. **Qualitative Analysis** describe visualizations for qualitatively evaluating performance
   6. **Quantitative Analysis** determine statistic for quantitatively evaluating performance

### Write Code
8. generate simulated data
10. algorithm code
11. qualitative evaluation code
12. quantitative evaluation code

### Numerical Evaluation
#### Simulation
8. describe in words what you think the simulations will look like
9. plot simulated data
10. report whether it looks "right"

### Algorithm
1. describe in words how you think the simulation will perform
13. run alg on simulation 10 times  (randomizing simulation parameters)
13. plots results for each iteration use qualitative stuff as described above
14. include quantitative metric for each in title
15. plot summary statistics and report p-value
16. report degree of accuracy of your predictions, and if mismatch exists, explain.

