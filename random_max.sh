maxcount=10
count=1
while [ "$count" -le $maxcount ];
do 
number[$count]=$((RANDOM%90+10))
let "count += 1"
done
echo "${number[*]}"
max=${number[0]}
min=${number[0]}
for n in "${number[@]}" 
do
 
   if [[ $n -gt $max ]];
then
  max="$n"
fi

if [[ $n -lt $min ]];
then
min="$n"
fi
done
echo "the largest number is" $max
echo "the smallest number is" $min


secondgreatest=$(printf '%s\n' "${number[@]}" | sort -nu | tail -2 | head -1 )
echo "second greatest:- "$secondgreatest
secondsmallest=$(printf '%s\n' "${number[@]}" | sort -nr | tail -2 | head -1 )
echo "second smallest:- "$secondsmallest 
