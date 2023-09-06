echo "Write a text: "
read text

echo "$text" > temp.txt

num_words=$(wc -w < temp.txt)

rm temp.txt

echo "The text have $num_words words."