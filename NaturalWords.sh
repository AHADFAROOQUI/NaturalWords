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
meaning=('This number correlates with the Sun. This number is the source all numbers. It represents all things creative, individual, and positive.' 'This number represents the Moon. It carries all the feminine attributes of the Sun. Stands for all things artistic, romantic, and imaginative.' 'This number represents Jupiter. Jupiter is a planet of courage, determination, power, hard work, energy, work, knowledge and speech.' 'The number 4 stands in its symbolism for the Planet Uranus. It is considered to be related to the Sun, which is the number 1. Uranus is an active and destructive force that acts mainly on the mental level. It is believed that this is an unfavorable planet — dynamic in nature, a planet of low vibrations, hedonistic, forever unsatisfied.' 'The number 5 is represented by the Planet Mercury. Mercury is associated with the respiratory and nervous system, speech, education and mind. Although Mercury is considered a blissful and virtuous planet, it makes its owners suspicious, serious, cunning and sometimes deceptive.' 'The number 6 symbolizes Venus. In astrology, Venus is considered a blessed planet with a feminine nature. Venus is the sensual side of human nature. Venus rules the sublime feelings, romance, beauty, passion, sexual pleasures and arts — music, poetry, dancing.' 'This number stands in symbolism for Neptune. The Planet Neptune is a symbol of health, it is one of the main numerical parameters of the universe. Under this Planet's influence, people become highly sensitive, emotional. They are abhorred by material success and indifferent to the psychodrama of life. They have no vanity, no motivation to do anything.' 'The number 8 is associated with Saturn. The number 8 defines the realm of practical reality or in other words, it represents Human Justice. This planet is deemed unfavorable, it makes its owners greedy, painful, gloomy.' 'The number 9 is associated with the Planet Mars. Astrologers consider Mars to be an unfavorable planet, because people governed by Mars are egoists who put their desires above the desires of others. The influence of Mars makes such people quick-tempered, loving to get involved in disputes, lovers of destructive weapons, restless, inconstant, cruel, loving violence.')
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

