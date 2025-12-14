#!/bin/bash

check_prime() {
    n=$1
    flag=1
    for ((i=2; i<=n/2; i++))
    do
        if [ $((n%i)) -eq 0 ]
        then
            flag=0
            break
        fi
    done

    if [ $flag -eq 1 ] && [ $n -gt 1 ]
    then
        echo "$n is a Prime Number"
    else
        echo "$n is NOT a Prime Number"
    fi
}

check_leap() {
    y=$1
    if (( (y % 400 == 0) || (y % 4 == 0 && y % 100 != 0) ))
    then
        echo "$y is a Leap Year"
    else
        echo "$y is NOT a Leap Year"
    fi
}

sum_series() {
    n=$1
    sum=0
    for ((i=1; i<=n; i++))
    do
        sum=$((sum+i))
    done
    echo "Sum of series (1 to $n) = $sum"
}

read -p "Enter a number: " num

echo "------ MENU ------"
echo "1. Check Prime"
echo "2. Check Leap Year"
echo "3. Print Sum of Series (1 to n)"
echo "4. Exit"

read -p "Enter your choice: " ch

case $ch in
    1) check_prime $num ;;
    2) check_leap $num ;;
    3) sum_series $num ;;
    4) exit ;;
    *) echo "Invalid Choice" ;;
esac
