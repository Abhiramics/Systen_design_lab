echo "Enter the limit"
read limit
echo "Enter the numbers"
for((i=0; i<limit; ++i))
do
read x 
a[i]=$x
done
echo "enter the element : "
read num
for((i=0; i<limit; ++i))
do 
if [[ num -eq a[i] ]];
then
   c=1
   break
fi
done
if [[ c -eq 1 ]];
then
    echo $num" is  in the list"
else
    echo $num " is not in the list"
fi