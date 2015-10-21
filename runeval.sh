
##  Runtime Evaluation Script
##  EECS 583 Final Project
##  Author: Will Sullivan 

#  User defined variables
printf "%s\n" "--> Setting user defined variables"
OUTPUT_FILE=results
PASS_PERMUTATIONS_FILE=pass_permutations

#  Automatic variables
printf "%s\n" "Setting the variables..."
BENCHMARK_DIR=./benchmarks #Path to the directory holding the c files
SRC_DIR=${BENCHMARK_DIR}/src
BIN_DIR=${BENCHMARK_DIR}/bin
ASM_DIR=${BENCHMARK_DIR}/asm

printf "%s\n" "--> Cleaning the workspace"
rm ./${OUTPUT_FILE}.csv

for SOURCE in ${SRC_DIR}/*.c 
do

	#  Remove the path and the extension from the file name
	SOURCE=$(basename "$SOURCE")
	SOURCE="${SOURCE%.*}"

	#  Compile the source
	printf "%s\n" "--> Compiling ${SOURCE}.c"
	clang -emit-llvm -o ${ASM_DIR}/${SOURCE}.bc -c ${SRC_DIR}/${SOURCE}.c

	#  Loop over each entry in the CSV file
	OLDIFS=$IFS
	IFS=","
	while read id pass_options
	do
		        
		pass_options_clean=$(printf "%s" ${pass_options} | tr -d '\r\n')
		#echo "$pass_options" | tr -d '\r\n' | cat -v
		#echo "hello" | tr -d '4' | cat -v
		#printf "%s\n" "-->  Performing optimization ${id} with sequence: '${pass_options_clean}'"
		printf "%s\n" "-->  Generating optimization ${id}"
		cmd_str="opt ${pass_options_clean} ${ASM_DIR}/${SOURCE}.bc > ${ASM_DIR}/${SOURCE}.opt.bc"
		#printf "%s\n" ${cmd_str}
		eval $cmd_str

		printf "%s\n" "--> Generating ${SOURCE}.exe"
		llc < ${ASM_DIR}/${SOURCE}.opt.bc > ${ASM_DIR}/${SOURCE}.s 
		g++ -o ${BIN_DIR}/${SOURCE}.exe ${ASM_DIR}/${SOURCE}.s 

		#  Check whether or not the file is there
		if (test -e "${BIN_DIR}/${SOURCE}.exe")
		then 
			printf "%s\n" "--> Testing ${SOURCE} runtime"
			#\time -o ${PROJECT_DIR}/${OUTPUT_FILE}.csv -a -f "%e" ${BIN_DIR}/${SOURCE}.exe > /dev/null
			TIMEFORMAT='%3R'
			elapsed_time=$(time (${BIN_DIR}/${SOURCE}.exe > /dev/null 2>&1) 2>&1) 
			printf "%s\n" "${SOURCE},${id},${elapsed_time}" >> ./${OUTPUT_FILE}.csv 
		else 
			printf "Error!"
			printf "%s\n" "${SOURCE},${id},ERROR" >> ./${OUTPUT_FILE}.csv 
		fi



		printf "%s\n" "--> Remove the old files to ensure they are not re-run"
		rm ${ASM_DIR}/${SOURCE}.opt.bc 2> /dev/null
		rm ${ASM_DIR}/${SOURCE}.s 2> /dev/null
		rm ${BIN_DIR}/${SOURCE}.exe 2> /dev/null

	done < ./${PASS_PERMUTATIONS_FILE}.csv
	IFS=OLDIFS 



done
