# WHILE LOOP
var=1
while [ $var -le 5 ]
do
    echo “Looping $var times”
# take the current value of var, add one to it and then reassign it back to var
#   var=$(($var + 1)) below is cleaner code
     ((var++))  # check to see if this works as well as above code
done

# End