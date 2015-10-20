
##  Runtime Evaluation Script
##  EECS 583 Final Project
##  Author: Will Sullivan 

#  User defined variables
echo "--> Setting user defined variables"
OUTPUT_FILE=results
PASS_PERMUTATIONS_FILE=pass_permutations

#  Automatic variables
echo "Setting the variables..."
BENCHMARK_DIR=./benchmarks #Path to the directory holding the c files
SRC_DIR=${BENCHMARK_DIR}/src
BIN_DIR=${BENCHMARK_DIR}/bin
ASM_DIR=${BENCHMARK_DIR}/asm

echo "--> Cleaning the workspace"
rm ./${OUTPUT_FILE}.csv

for SOURCE in ${SRC_DIR}/*.c 
do

	#  Remove the path and the extension from the file name
	SOURCE=$(basename "$SOURCE")
	SOURCE="${SOURCE%.*}"

	#  Compile the source
	echo "--> Compiling ${SOURCE}.c"
	clang -emit-llvm -o ${ASM_DIR}/${SOURCE}.bc -c ${SRC_DIR}/${SOURCE}.c

	#  Loop over each entry in the CSV file
	OLDIFS=$IFS
	IFS=","
	while read id pass_options
	do
		        
		echo "--> Performing optimization '${id}' with sequence: '${pass_options}'"
		cmd_str="opt ${pass_options} -disable-output ${ASM_DIR}/${SOURCE}.bc"
		eval $cmd_str

		echo "--> Generating ${SOURCE}.exe"
		llc < ${ASM_DIR}/${SOURCE}.bc > ${ASM_DIR}/${SOURCE}.s
		g++ -o ${BIN_DIR}/${SOURCE}.exe ${ASM_DIR}/${SOURCE}.s

		echo "--> Testing ${SOURCE}.c runtime"
		#\time -o ${PROJECT_DIR}/${OUTPUT_FILE}.csv -a -f "%e" ${BIN_DIR}/${SOURCE}.exe > /dev/null
		TIMEFORMAT='%3R'
		elapsed_time=$(time (${BIN_DIR}/${SOURCE}.exe > /dev/null) 2>&1) 
		echo "${SOURCE},${id},${elapsed_time}" >> ./${OUTPUT_FILE}.csv 


	done < ./${PASS_PERMUTATIONS_FILE}.csv
	IFS=OLDIFS 



done
