echo " enter the number of inputs"
read n
i=1
sum=0
echo "enter the numbers"
while [ $i -le $n ]
do 
    read x 
    sum=$((sum + x))
    i=$((i + 1))
done
echo "Sum is :"$sum
avg=$((sum / n))
echo "Average is "$avg
