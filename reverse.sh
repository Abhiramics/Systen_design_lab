echo -n "enter number : "
read n 
sd=0
rev=""
on=$n
while [ $n -gt 0 ]
do
     sd=$(( $n % 10 ))
     n=$(( $n / 10 ))
     rev=$( echo ${rev}${sd})
done
echo "$rev is a reverse order of $on"
