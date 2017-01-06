this is a list of algorithmic properties that one may desire to use to evaluate an algorithm



## Pragmatic Properties

1. is code available?
2. installation ease, including:
    1. clear enough instructions?
    2. dependencies easy to deal with?
    3. 1-line installable (eg, via CRAN or pip)?
    4. virtualized (eg, in docker)?
3. run ease
    1. what language is it implemented in?
    2. how many hyper-parameters
    3. for each tunable parameter (or hyper-parameter)
        1. is it nested?
        2. are "warm starts" available?
4. platform considerations, does it run on
    1. CPU
    2. GPU
    3. Cluster
    4. Mobile
    5. Dedicated hardware (eg, FPGA)
    6. Supercomputer
3. is it open source
    1. if not, how much does it cost?
    2. if so, in what language(s)?
4. does it have a reasonable license

## Theoretical Properties

1. Statistical Considerations, state the:
    1. Feasible region of action space (the set of possible "actions")?
    2. "Consistent region" of action space (ie, region of space for which the expected action is the optimal one)?
    3. Complexity (size) of action space (eg, number of parameters)?
    5. Robustness to model misspecifications (eg, if action space is linear, and real model is quadratic, how bad is performance)?
    6. Numerically stablility (eg, if p > n, what happens)?
    4. Convergence rate (eg, how fast does loss decrease as sample size increases)?
2. computational considerations: theoretical complexity in terms of sample size (n), dimensionality (d), and ideally number of cores (t)

| 	| space | time 	|
| :--- 	| :--- 	| :---	|
| train |  	| 	|
| test 	| 	| 	|

## Empirical Properties


1. average loss/accuracy vs sample (& dimension) for simulated benchmark suite
1. average loss/accuracy vs sample (& dimension) for real data benchmark suite
1. computational time for all the above settings
1. price for all the above settings


