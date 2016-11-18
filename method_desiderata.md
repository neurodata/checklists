properties to consider upon evaluating a methodology for solving a problem:

### theoretical properties

1. statistical considerations
	1. theoretical properties
		1. feasible region of action space
		2. complexity (size) of action space
		3. how robust to which model misspecifications
2. computational considerations: theoretical complexity in terms of sample size (n), dimensionality (d), and ideally number of cores (t)

| 		| space | time 	|
| :--- 	| :--- 	| 		|
| train |  		| 		| 
| test 	| 		| 		| 


### pragmatic properties

3. implementation considerations
	2. code available?
	3. open source?
	4. reasonably licensed?
	5. installation ease, including:
		1. clear instructions?
		2. dependencies easy to deal with?
		3. 1-line installable?
		6. virtualized?
	6. run ease 
		1. what language is it implemented in?
		2. for each tunable parameter (or hyper-parameter)
			1. is it nested?
			2. are "warm starts" available?

4. platform considerations, does it run on
	1. CPU
	2. GPU
	3. Cluster
	4. Mobile


### Empirical Properties

2. numerical accuracy
	3. empirical bias on exemplar problems for which optimal solution lives in action space
	4. empirical variance on exemplar problems for which optimal solution lives in action space
	3. empircal robustness in above mentioned model misspecifications
2. wall time/space (using same table as above)

