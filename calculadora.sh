#!/bin/bash

echo "=== Calculadora ==="
read -p "Digite o primeiro número: " num1
read -p "Digite o segundo número: " num2
read -p "Escolha a operação (+, -, *, /): " op

case "$op" in
  "+")
    resultado=$(echo "$num1 + $num2" | bc)
    ;;
  "-")
    resultado=$(echo "$num1 - $num2" | bc)
    ;;
  "*")
    resultado=$(echo "$num1 * $num2" | bc)
    ;;
  "/")
    resultado=$(echo "scale=2; $num1 / $num2" | bc)
    ;;
  *)
    echo "Operação inválida."
    exit 1
    ;;
esac

echo "Resultado: $resultado"


