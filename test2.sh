#!/bin/sh


echo "start test 1MB file size"

for i in {1..5};
do
echo -n $( { time ./mycopy_eqfilesize_buffer.o 1MBsalmon.txt new1MBsalmon.txt >/dev/null; } |& awk -F" " '/real/{print $2}' | awk -F"m" '//{print $2}' | awk -F"s" '//{print $1}')
rm -f new1MBsalmon.txt 
echo -e ""
done
echo -e "\n"

echo "start test 10MB file size"

for i in {1..5};
do
echo -n $( { time ./mycopy_eqfilesize_buffer.o 10MBsalmon.txt new10MBsalmon.txt >/dev/null; } |& awk -F" " '/real/{print $2}' | awk -F"m" '//{print $2}' | awk -F"s" '//{print $1}')
rm -f new10MBsalmon.txt 
echo -e ""
done
echo -e "\n"

echo "start test 100MB file size"

for i in {1..5};
do
echo -n $( { time ./mycopy_eqfilesize_buffer.o 100MBsalmon.txt new100MBsalmon.txt >/dev/null; } |& awk -F" " '/real/{print $2}' | awk -F"m" '//{print $2}' | awk -F"s" '//{print $1}')
rm -f new100MBsalmon.txt 
echo -e ""
done
echo -e "\n"

echo "start test 200MB file size"

for i in {1..5};
do
echo -n $( { time ./mycopy_eqfilesize_buffer.o 200MBsalmon.txt new200MBsalmon.txt >/dev/null; } |& awk -F" " '/real/{print $2}' | awk -F"m" '//{print $2}' | awk -F"s" '//{print $1}')
rm -f new200MBsalmon.txt 
echo -e ""
done
echo -e "\n"

echo "start test 500MB file size"

for i in {1..5};
do
echo -n $( { time ./mycopy_eqfilesize_buffer.o 500MBsalmon.txt new500MBsalmon.txt >/dev/null; } |& awk -F" " '/real/{print $2}' | awk -F"m" '//{print $2}' | awk -F"s" '//{print $1}')
rm -f new500MBsalmon.txt 
echo -e ""
done
echo -e "\n"

echo "start test 1GB file size"

for i in {1..5};
do
echo -n $( { time ./mycopy_eqfilesize_buffer.o 1GBsalmon.txt new1GBsalmon.txt >/dev/null; } |& awk -F" " '/real/{print $2}' | awk -F"m" '//{print $2}' | awk -F"s" '//{print $1}')
rm -f new1GBsalmon.txt 
echo -e ""
done
echo -e "\n"