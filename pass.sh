#!/bin/bash

n=$1

main(){
while [[ 0 -lt $n ]]
do
comb
echo -n "$pass"
#echo $n
((n--))
done
echo ""
}

randomA(){
ran=$(shuf -i 1-10 -n1)
return $ran
}

randomNS(){
ran=$(shuf -i 1-10 -n1)
return $ran
}

lowercase=("a" "b" "c" "d" "e" "f" "g" "h" "i" "j" "k" "l" "m" "n" "o" "p" "q" "r" "s" "t" "u" "v" "w" "x" "y" "z")
uppercase=("A" "B" "C" "D" "E" "F" "G" "H" "I" "J" "K" "L" "M" "N" "O" "P" "Q" "R" "S" "T" "U" "V" "W" "X" "Y" "Z")
numbers=("0" "1" "2" "3" "4" "5" "6" "7" "8" "9")
specialchar=("@" "#" "!" "+" "&" "_" "$" "₹" "=" "%")

comb=( "${lowercase[@]}" "${uppercase[@]}" "${numbers[@]}" "${specialchar[@]}" )

comb(){
num=$(shuf -i 1-4 -n1)

randomA; ran1=$?
randomNS; ran2=$?
case $num in
1)
pass=${lowercase[$ran1]}
;;
2)
pass=${uppercase[$ran1]}
;;
3)
pass=${numbers[$ran2]}
;;
4)
pass=${specialchar[$ran2]}
;;
*)
echo "Error!"
;;

esac
}

main
