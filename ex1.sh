#!/bin/bash

read -p "Digite o primeiro numero: " num1
read -p "Digite o segundo numero: " num2

echo ""
echo "=== Calculadora ==="
echo "1. Soma"
echo "2. Subtracao"
echo "3. Multiplicacao"
echo "4. Divisao"
echo "5. Sair"
read -p "Escolha uma opcao 1-5: " opcao

if [ "$opcao" -eq 1 ]; then
        resultado=$(echo "$num1 + $num2" | bc)
        echo "O resultado da soma é: $resultado"

elif [ "$opcao" -eq 2 ]; then
        resultado=$(echo "$num1 - $num2"| bc)
        echo "O resultado da subtracao é: $resultado"
elif [ "$opcao" -eq 3 ]; then
        resultado=$(echo "$num1 * $num2" | bc)
        echo "O resultado da multiplicacao é: $resultado"
elif [ "$opcao" -eq 4 ]; then
        if [ "$num2" -eq 0 ]; then
                echo "Nao é possível dividir por zero"
        else
                resultado=$(echo "scale = 2; $num1 / $num2" | bc)
                echo "Resultado da divisao: $resultado"
        fi
elif  [ "$opcao" -eq 5 ]; then
        echo "saindo..."
else
        echo "digite um opcao válida! 1 a 5"
fi
