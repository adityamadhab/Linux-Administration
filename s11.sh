#!/bin/bash

echo "Enter the first no. "
read a
echo "Enter the second no. "
read b

sum=$(expr $a + $b)
sub=$(expr $a - $b)
multi=$(expr $a \* $b)
div=$(expr $a / $b)

echo "Sum is " $sum
echo "Sub is " $sub
echo "Multiplication is " $multi
echo "Division is " $div
