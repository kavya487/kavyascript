a=$1
b=$2

if [ $# -lt 2 ]
then
    echo "please provide $0 <1number> <number2>"
    exit 1 
fi

c=$((a+b))
echo "sum of two numbers is $c"
