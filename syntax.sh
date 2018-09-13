#!/bin/bash


syntax="sas.syntax"

comma_color=brightcyan
keywords1_color=brightmagenta
keywords2_color=brightblue
keywords3_color=cyan
keywords4_color=brightgreen
comments_color=green
strings_color=magenta
digits_color=brightgreen

echo "context default" > $syntax
echo "keyword ; $comma_color" >> $syntax

echo "">> "$syntax"
for word in $(<keywords1)
do
    echo "keyword whole $word $keywords1_color" >> $syntax
done

echo "" >> $syntax
for word in $(<keywords2)
do
    echo "keyword whole $word $keywords2_color" >> $syntax
done


echo "" >> $syntax
for word in $(<keywords3)
do
    echo "keyword whole $word $keywords3_color" >> $syntax
done


echo "" >> $syntax
for word in $(<keywords4)
do
    echo "keyword whole $word $keywords4_color" >> $syntax
done


echo "" >> $syntax
cat "digits" | sed -e "s/_color_/$digits_color/" >> $syntax


echo "" >> $syntax
echo "" >> $syntax
echo "wholechars abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789-._" >> $syntax

echo "" >> $syntax
cat "comments" | sed -e "s/_color_/$comments_color/" >> $syntax

echo "" >> $syntax
echo "" >> $syntax
cat "strings" | sed -e "s/_color_/$strings_color/" >> $syntax
