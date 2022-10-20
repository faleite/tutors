#! /bin/bash
#
#Exercício
#Escreva um programa em shell script que pede e recebe a nota do usuário
#a partir da linha de comandos, e calcula o conceito. Utilize blocos IF,
#porém construa a lógica dos testes de modo a fazer o mínimo de testes possível.
#
#Os conceitos são:
#De 0 a 5 potos - Insuficiente
#De 5 a 7 pontos - Regular
#De 7 a 9 pontos - Bom
#Acima de 9 pontos - Excelente

read -p "Qual é a sua nota? " NOTA

if [ "$NOTA" -gt "9" ]
then
    echo "Excelente"

elif [ "$NOTA" -gt "7" ]
then
    echo "Bom"

elif [ "$NOTA" -gt "5" ]
then
    echo "Regular"

elif [ "$NOTA" -gt "0" ]
then
    echo "Insuficiente"

else
    echo "Nota inválida"
    exit 1
fi
