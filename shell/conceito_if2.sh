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

# Modificação: Adaptado para aritmética de ponto flutuante (precisão de uma casa decimal).

read -p "Qual é a sua nota? " NOTA

# Multiplica a nota por 10 e pega o valor da casa decimal (7.7*10=77.0 -> 77)
NOTA=$(echo "$NOTA*10" | bc -l | cut -d"." -f1)

if [ "$NOTA" -gt "90" ]
then
	echo "Conceito Excelente"

elif [ "$NOTA" -gt "70" ]
then
	echo "Conceito Bom"

elif [ "$NOTA" -gt "50" ]
then
	echo "Conceito Regular"

elif [ "$NOTA" -gt "0" ]
then
	echo "Conceito Insuficiente"

else
	echo "Usuário não forneceu uma nota válida!"
	exit 1
fi
