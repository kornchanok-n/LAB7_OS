#!/bin/sh
echo "generateing salmon(file)..."

yes LoveSalmon | head -100000 | tr -d "\n" > 1MBsalmon.txt
yes LoveSalmon | head -1000000 | tr -d "\n" > 10MBsalmon.txt
yes LoveSalmon | head -10000000 | tr -d "\n" > 100MBsalmon.txt
yes LoveSalmon | head -20000000 | tr -d "\n" > 200MBsalmon.txt
yes LoveSalmon | head -50000000 | tr -d "\n" > 500MBsalmon.txt
yes LoveSalmon | head -100000000 | tr -d "\n" > 1GBsalmon.txt

echo "...salmon(file) created successfully"
