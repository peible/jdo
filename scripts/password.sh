#!/bin/bash
echo "enter a number of lengths"
read length
password=""
arr=(\! \@ \# \$ \% \& \* \_ \- a b c d e f g h i j k l m n o p q r s t u v w x y z A B C D E F G H I J K L M N O P Q R S T U V W X Y Z)

for i in $(seq 1 $length); do
  password+=${arr[$RANDOM % 61]}
done

echo $password >> password.txt
echo "Password generation complete. The password has been saved to password.txt."