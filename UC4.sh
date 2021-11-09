#!/bin/bash 
#!/bin/bash

loop_times=$((RANDOM%1000))
toss=0
@@ -30,9 +30,17 @@ done

echo "Number of times coin flipped is $loop_times"

declare -A singlet_percentage

for i in ${!singlet[@]}
do
	singlet_percentage[percentage$i]=`awk "BEGIN {print ((${singlet[$i]}*100)/$loop_times)}"`
done

for i in ${!singlet[@]}
do
	echo $i ":" ${singlet[$i]}
	percentage=`awk "BEGIN {print ((${singlet[$i]}*100)/$loop_times)}"`
	echo $i " winning percentage is " $percentage
done
