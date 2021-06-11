echo "fibonacci series"
echo "Enter n :"
read n
a=0
b=1
echo "the fibonacci series is :"
for (( i=0; i<n; i++ ))
do
    echo -n "$a "
    fn=$((a + b))
    a=$b
    b=$fn
done