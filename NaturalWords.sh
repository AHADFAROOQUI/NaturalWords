#!/bin/bash/

while [ 1 ]
do
clear
echo "..Welcome to Natural Words.."
echo "When a singular word is entered: our program returns the compound and soul/natural number residing inside of the word.."
read -p "Entered desired word to begin: " word
count1="0"
count2="1"
one=('a' 'i' 'j' 'q' 'y')
two=('b' 'k' 'r')
three=('c' 'g' 'l' 's')
four=('d' 'm' 't')
five=('e' 'h' 'x' 'n')
six=('u' 'v' 'w')
seven=('o' 'z')
eight=('f' 'p')
output="0"
while [ ${word:$count1:$count2} ]
do
clear
letter=(${word:$count1:$count2})
case $letter in
    ${one[0]} | ${one[1]} | ${one[2]} | ${one[3]} | ${one[4]})
        echo $letter
        output=$((output + 1))
        ;;
    ${two[0]} | ${two[1]} | ${two[2]})
        echo $letter
        output=$((output + 2))
        ;;
    ${three[0]} | ${three[1]} | ${three[2]} | ${three[3]})
        echo $letter
        output=$((output + 3))
        ;;
    ${four[0]} | ${four[1]} | ${four[2]})
        echo $letter
        output=$((output + 4))
        ;;
    ${five[0]} | ${five[1]} | ${five[2]} | ${five[3]})
        echo $letter
        output=$((output + 5))
        ;;
    ${six[0]} | ${six[1]} | ${six[2]})
        echo $letter
        output=$((output + 6))
        ;;
    ${seven[0]} | ${seven[1]})
        echo $letter
        output=$((output + 7))
        ;;
    ${eight[0]} | ${eight[1]})
        echo $letter
        output=$((output + 8))
        ;;
esac
count1=$((count1 + 1))
done
clear
meaning=('This number correlates with the Sun. This number is the source all numbers. It represents all things creative, individual, and positive.' 'This number represents the Moon. It carries all the feminine attributes of the Sun. Stands for all things artistic, romantic, and imaginative.' 'm3' 'm4' 'm5' 'm6' 'm7' 'm8' 'm9')
if [ ${output:1:1} ]
then
    first=${output:0:1}
    second=${output:1:1}
    root=$((first+second))
    if [ ${root:1:1} ]
    then
    froot1=${root:0:1}
    froot2=${root:1:1}
    output=$((froot1+froot2))
    echo You entered:  $word
    echo Compound number: $root
    echo Root number: $output
    meaning1=$(($output-1))
    echo ${meaning[$meaning1]}
    read
    else
    echo You entered: $word
    echo Compound number: $output
    echo Root number: $root
    meaning1=$((root-1))
    echo ${meaning[$meaning1]}
    read
    fi
else
    echo Root number: $output
    meaning1=$(($output-1))
    echo ${meaning[$meaning1]}
    read
fi
done

