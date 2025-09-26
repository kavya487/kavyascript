a=$1
b=$2
c=$(a+b)
if [ $# -lt 2 ]
then
    echo "please provide sh scriptnmae <1number> <number2>"
    exit 1 
fi


echo "sum of two numbers is $c"
