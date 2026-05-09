#!/bin/bash

Count_with_output_msg(){
    start_time=$SECONDS
    for ((a=0; a <= 1000000; a++))
    do
        echo "${a}"
    done
    finish_time=$SECONDS
    echo "processing time = $((finish_time-start_time))"
}

Count_without_output_msg(){
    start_time=$SECONDS
    # Usa un loop più efficiente senza chiamate di sistema
    for ((a=0; a <= 1000000; a++)); do :; done
    finish_time=$SECONDS
    echo "processing time = $((finish_time-start_time))"
}

echo "Con output:"
Count_with_output_msg

echo "Senza output:"
Count_without_output_msg