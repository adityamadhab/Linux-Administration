#!/bin/bash

echo "Enter the basic pay:"
read basic

if [ "$basic" -lt 15000 ]; then
    hra=$(echo "scale=2; $basic * 0.1" | bc)
    da=$(echo "scale=2; $basic * 0.9" | bc)
else
    hra=500
    da=$(echo "scale=2; $basic * 0.98" | bc)
fi

gs=$(echo "scale=2; $basic + $hra + $da" | bc)

echo "Gross = $gs"
echo "HRA = $hra"
echo "DA = $da"
