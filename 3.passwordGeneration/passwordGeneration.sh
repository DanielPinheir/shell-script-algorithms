#!/bin/bash

echo "Enter the desired password length:"
read length

characters="ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789"
password=""

for (( i = 0; i < length; i++ )); do
   password="$password${characters:RANDOM%${#characters}:1}" 
done

echo "Generate password: $password"



