# execution Time on Ubuntu-26.06 

## on 
- Versione WSL: 2.6.3.0
- Versione kernel: 6.6.87.2-1

## execution time
- with output in the terminal -> 26s to 27s
- with out output in the terminal -> 2s

## code adjusted by deepseek - up to 09/05/2026
### input promt below :
#!/bin/bash

Count_with_output_msg(){
        start_time=$SECONDS
        for ((a=0; a <= 10000000; a++))
        do
                echo "${a}"
        done
        finish_time=$SECONDS

        output_time=$((finish_time-$start_time))
        echo "processing time = ${output_time}"
}
Count_without_output_msg(){
        start_time=$SECONDS
        for ((a=0; a <= 10000000; a++))
        do
            echo
        done
        finish_time=$SECONDS

        output_time=$((finish_time-$start_time))
        echo "processing time = ${output_time}"
}

Count_with_output_msg()//mi fixi questo codice bash

