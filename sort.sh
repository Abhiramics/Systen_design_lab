echo "Enter size of array :"
read n
echo "Enter the numbers :"
for((i=0 ; i<n ;i++))
do
   read x 
   a[i]=$x
done

bsort()
{
for ((i = 0; i<n; i++))
do
    for((j = 0; j<n-i-1; j++))
    do
        if [ ${a[j]} -gt ${a[$((j+1))]} ]
        then
            t=${a[j]}
            a[$j]=${a[$((j+1))]}  
            a[$((j+1))]=$t
        fi
    done
done
}
bsort
echo "Sorted array :"
echo ${a[*]}