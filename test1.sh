#!/bin/sh


echo "start test 100B buffer"

for i in {1..5};
do
echo -n $( { time ./mycopy_100B_buffer.o 1GBsalmon.txt new1GBsalmon.txt >/dev/null; } |& awk -F" " '/real/{print $2}' | awk -F"m" '//{print $2}' | awk -F"s" '//{print $1}')
rm -f new1GBsalmon.txt 
echo -e ""
done
echo -e "\n"

echo "start test 1KB buffer"

for i in {1..5};
do
echo -n $( { time ./mycopy_1KB_buffer.o 1GBsalmon.txt new1GBsalmon.txt >/dev/null; } |& awk -F" " '/real/{print $2}' | awk -F"m" '//{print $2}' | awk -F"s" '//{print $1}')
rm -f new1GBsalmon.txt 
echo -e ""
done
echo -e "\n"

echo "start test 10KB buffer"

for i in {1..5};
do
echo -n $( { time ./mycopy_10KB_buffer.o 1GBsalmon.txt new1GBsalmon.txt >/dev/null; } |& awk -F" " '/real/{print $2}' | awk -F"m" '//{print $2}' | awk -F"s" '//{print $1}')
rm -f new1GBsalmon.txt 
echo -e ""
done
echo -e "\n"

echo "start test 100KB buffer"

for i in {1..5};
do
echo -n $( { time ./mycopy_100KB_buffer.o 1GBsalmon.txt new1GBsalmon.txt >/dev/null; } |& awk -F" " '/real/{print $2}' | awk -F"m" '//{print $2}' | awk -F"s" '//{print $1}')
rm -f new1GBsalmon.txt 
echo -e ""
done
echo -e "\n"