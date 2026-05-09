#!/bin/bash

Count_with_output_msg(){
    start_time=$(date +%s%N)
    for ((a=0; a <= 1000000; a++))
    do
        echo "${a}"
    done
    finish_time=$(date +%s%N)
    
    output_time=$(( (finish_time - start_time) / 1000000 )) # Converti in millisecondi
    echo "processing time = ${output_time} ms"
}

Count_without_output_msg(){
    start_time=$(date +%s%N)
    for ((a=0; a <= 1000000; a++))
    do
        : 
    done
    finish_time=$(date +%s%N)
    
    output_time=$(( (finish_time - start_time) / 1000000 ))
    echo "processing time = ${output_time} ms"
}

echo "With output: "
Count_with_output_msg
echo "Without output: "
Count_without_output_msg