### hypothesis testing

| test    	  | R^d  	              | 1-Graph  	|   	|   	|
|---	        |---	                |---	|---	|---	|
| 1-sample  	| parametric bootstrap| parametric bootstrap :question:  	|   	|   	|
| 2-sample  	| MGC :question:| semipar :question: 	|   	|   	|
| k-sample  	| MGC :question:| semipar :question:  	|   	|   	|
| independent | MGC :white_check_mark:  |   	|   	|   	|



### clustering

|   	    | low-d     | high-d    | 1-graph   | m-graphs |
|---	    |---	      |---	      |---	      |---	    | 
| par  	  | k-m  	    | k-m 	    | SBM  	    | semipar :question:  	| 
| semi-par| gmm  	    | IDT :white_check_mark: 	    | DC-SCM    |  deltacon :question: 	| 
| kernel  | SC  	    | SC  	    |:question: | :question:            |
| non-par | :question:| :question:| robust vertex clustering |   	    | 


SC: spectral clustering. k-m: k-means. IDT: iterative denoising tree

### classification

|   	    | low-d     | high-d| 1-graph   | m-graphs |
|---	    |---	      |---	  |---	      |---	    | 
| par  	  | LDA  	    | LOL :white_check_mark:	| VN  	    | signal subgraph :question:  	| 
| semi-par| QDA  	    | QOQ :white_check_mark:	| :question:    |   :question: 	    | 
| kernel  | SVM  	    | SVM  	|:question: | :question:| :question:
| non-par | RerF :white_check_mark:     | RerF :white_check_mark: |  :question: 	      | :question:  	    | 


### regression

|   	    | low-d           | high-d    | 1-graph   | m-graphs |
|---	    |---	            |---	      |---	      |---	    | 
| par  	  | linear   	      | LOL :question: 	    | SBM  	    | semipar :question:  	| 
| semi-par| polynomial  	  | QOQ :question: 	    | DC-SCM    |  deltacon :question: 	| 
| kernel  | SVR  	          | :question:  	    |:question: | :question:            |
| non-par | RerF :question: | RerF :question:| robust vertex clustering |   	    | 

