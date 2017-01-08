### hypothesis testing

| test    	  | R^d  	              | 1-Graph  	|  1-Grute 	|   	|
|---	        |---	                |---	|---	|---	|
| 1-sample  	| parametric bootstrap| parametric bootstrap :question:  	| vertex-MGC :white_check_mark:  	|   	|
| 2-sample  	| MGC :question:| semipar :question: 	|   	|   	|
| k-sample  	| MGC :question:| semipar :question:  	|   	|   	|
| independent | MGC :white_check_mark:  |   	|   	|   	|



### clustering

|   	    | low-d     | high-d    | 1-graph   | m-graphs | time-series |
|---	    |---	      |---	      |---	      |---	    |---  |
| par  	  | k-m  	    | k-m 	    | SBM  	    | semipar :question:  	| |
| semi-par| gmm  	    | IDT :white_check_mark: 	    | DC-SCM    |  deltacon :question: 	| |
| kernel  | SC  	    | SC  	    |:question: | :question:            | |
| non-par | :question:| :question:| robust vertex clustering |   	    |  |


SC: spectral clustering. k-m: k-means. IDT: iterative denoising tree

### classification

|   	    | low-d     | high-d| 1-graph   | m-graphs | time-series
|---	    |---	      |---	  |---	      |---	    |--- 
| par  	  | LDA  	    | LOL :white_check_mark:	| VN  	    | signal subgraph :question:  	| 
| semi-par| QDA  	    | QOQ :white_check_mark:	| :question:    |   :question: 	    | 
| kernel  | SVM  	    | SVM  	|:question: | :question:| :question:
| non-par | RerF :white_check_mark:     | RerF :white_check_mark: |  :question: 	      | :question:  	    | 


### regression

|   	    | low-d           | high-d          | 1-graph   | m-graphs | time-series
|---	    |---	            |---	            |---	      |---	    |--- 
| par  	  | linear   	      | LOL :question: 	| PLS :question:   	    |  :question:  	| 
| semi-par| polynomial  	  | QOQ :question: 	| :question:    |   :question: 	| 
| kernel  | SVR  	          | :question:  	  |:question: | :question:            |
| non-par | RerF :question: | RerF :question: | :question: | :question:  	    | 


### action/control

|     | metric |
|---  |--- |
| par | discriminability |
| non-par | MGC-discriminability :question: |
| non-par | class morphing :question: |


### low dimensional embedding

|   	    | low-d           | high-d          | 1-graph         | m-graphs                          | time-series
|---	    |---	            |---	            |---	            |---	                              |--- 
| par    	| PCA             | PCA 	          | RDPG  	        | joint-embedding :white_check_mark:| Mr. Sid :white_check_mark: 
| semi-par| GMRA :question: | GMRA :question: | HSBM :question: | JOFC :question: 	| :question:
| kernel  | kernel-PCA      | kernal-PCA  	  |:question:       | :question:        | :question:
| non-par | RerF :question: | RerF :question: | :question:      | :question:  	    | :question:
