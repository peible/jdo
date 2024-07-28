#!/bin/bash
echo "enter a number of lengths"
read length
password=""
arr=(\! \@ \# \$ \% \& \* \_ \- a b c d e f g h i j k l m n o p q r s t u v w x y z A B C D E F G H I J K L M N O P Q R S T U V W X Y Z 1 2 3 4 5 6 7 8 9 0)

for i in $(seq 1 $length); do
  password+=${arr[$RANDOM % 21]}
done

echo $password >> password.txt
echo "Password generation complete. The password has been saved to password.txt."