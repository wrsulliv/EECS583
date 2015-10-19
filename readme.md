Readme
======

**EECS 583 - Final Project**

**Authors: Will Sullivan**

Overview
---------
Use (./runeval.sh) to generate (./results.csv) which can then be used as training data to the machine learning classifier.  




File Structure
---------------
	.
	|-- runeval.sh
	|-- results.csv
	|-- pass_permutations.csv
	|	|-- benchmarks
	|	|	|-- src 
	|	|	|	|-- (.c) Source Files
	|	|	|-- asm 
	|	|	|	|-- (.bc) and (.s) Assembly Files
	|	|	|-- bin
	|	|	|	|-- (.exe) Compiled Binaries
	 

Definitions
-----------
Here are a number of definitions used in this document:

* **src_file**:  A source (.c) file located in (./lib)

* **pass_id**:   A unique ID given to a specifc pass permutation (set in ./pass_permutations.csv)

* **pass_string**:  A string of ordered passes as input into "opt" (set in ./pass_permutations.csv)

* **runtime**:  The total execution time of a compiled binary (reported in ./results.csv)

Files
-----

### ./runeval.sh
	Purpose:  This script will read (./pass_permutations.csv) and run each pass permutation on each of the (.c) files located in the (./src) directory.  
          	  For each of these permutations, the compiled inary is executed and the runtimes are stored in (./results.csv).

### ./results.csv
	Columns:  [src_file, pass_id, runtime]

### ./pass_permutations.csv
	Columns:  [pass_id, pass_string]
