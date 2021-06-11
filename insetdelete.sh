echo "enter the limit"
read l
c=0
echo "Enter the numbers"
for((i=0; i<l; ++i))
do
  
   read x 
   a[i]=$x
done
  echo "MENU"
  echo "1:Insertion"
  echo  "2:Deletion"
  read op 
  case $op in
    1)
        echo "enter the number for insertion"
        read num
        echo "Enter the position for insertion"
        read p
        if [[ p -gt l+1 ]]; 
            then
            echo "postion is greater than limit"
            else
            while [ $i -ge  $p ]
            do
                a[$(($i + 1))]=${a[$i]}
                i=$(($i - 1))
            done
            a[$p]=$num
            echo "number is as :"
            for((i=0; i<l+1; ++i))
            do
                echo ${a[i]}
            done
        fi
        ;;
    2)
            echo "Enter the number for deletion"
            read num2
            for(( i=0; i<l; ++i))
            do
                if [[ ${a[i]} -eq num2 ]];
                then
                    unset a[i]
                    c=1
                fi
            done
            if [[ c -eq 0 ]]
            then
                echo $num2 " not present in the list"
            else 
            echo "The array is :"
            for i in ${a[@]}
                do
                    echo $i
                done
            fi
        ;; 
    *)
    echo " Wrong choice"
    ;;
    esac
    