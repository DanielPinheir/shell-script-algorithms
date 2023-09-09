#!/bin/bash

function addition() {
  result=$(echo "$1 + $2" | bc)
  echo "Adition result: $result"
}

function subtraction() {
  result=$(echo "$1 - $2" | bc)
  echo "Subtraction result: $result"
}

function multiplication() {
  result=$(echo "$1 * $2" | bc)
  echo "Multiplication result: $result"
}

function split() {
  if [ "$2" -eq 0 ]; then
    echo "Erro: Division by zero is not allowed."
  else
    result=$(echo "scale=2; $1 / $2" | bc)
    echo "Split result: $result"
  fi
}

# Menu options
echo "Shell Calculator"
echo "1. Addition"
echo "2. Subtraction"
echo "3. Multiplication"
echo "4. Split"
echo "5. Esc"

read -p "Choose the desired operation (1/2/3/4/5): " choice

case $choice in
  1)
    read -p "Enter the first number: " num1
    read -p "Enter the second number: " num2
    addition "$num1" "$num2"
    ;;
  2)
    read -p "Enter the first number: " num1
    read -p "Enter the second number: " num2
    subtraction "$num1" "$num2"
    ;;
  3)
    read -p "Enter the first number: " num1
    read -p "Enter the second number: " num2
    multiplication "$num1" "$num2"
    ;;
  4)
    read -p "Enter the first number: " num1
    read -p "Enter the second number: " num2
    split "$num1" "$num2"
    ;;
  5)
    echo "Coming out of the calculator."
    exit 0
    ;;
  *)
    echo "Invalid option."
    ;;
esac
