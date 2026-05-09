#!/bin/bash

Count_with_output_msg(){
    start_time=$SECONDS
    for ((a=0; a <= 1000000; a++))
    do
        echo "${a}"
    done
    finish_time=$SECONDS
    
    output_time=$((finish_time-$start_time))
    echo "processing time = ${output_time}"
}

Count_without_output_msg(){
    start_time=$SECONDS
    for ((a=0; a <= 1000000; a++))
    do
        # Non stampa nulla (o stampa una riga vuota)
        # Per evitare output, usa : o > /dev/null
        : # Comando che non fa nulla
    done
    finish_time=$SECONDS
    
    output_time=$((finish_time-$start_time))
    echo "processing time = ${output_time}"
}

# Esegui le funzioni
echo "Con output:"
Count_with_output_msg

echo -e "\nSenza output:"
Count_without_output_msg