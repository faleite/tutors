#! /bin/bash
#
#Escreva um programa em shell script que pede e recebe a idade do usuário a
#partir da linha de comandos, e calcula a faixa etária do usuário.
#Utilize blocos IF, porém construa a lógica dos testes de modo a fazer
#o mínimo de testes possível.
#
#As faixas etárias são:
#
#De 0 a 2 anos - Bebê
#De 2 a 14 anos - Criança
#De 14 a 18 anos - Adolescente
#De 18 a 65 anos - Adulto
#Acima de 65 anos - Idoso

read -p "Qual a sua idade? " IDADE

if [ "$IDADE" -gt "65" ]
then
	echo "O usuário é idoso"

elif [ "$IDADE" -gt "18" ]
then
	echo "O usuário é adulto"

elif [ "$IDADE" -gt "14" ]
then
	echo "O usuário é adolescente"

elif [ "$IDADE" -gt "2" ]
then
	echo "O usuário é criança"

elif [ "$IDADE" -gt "0" ]
then
	echo "O usuário é bebê"

else
	echo "O usuário forneceu uma idade inválida!"
	exit 1  # exit 1 -> representa a saida ivalida 1 no `~> echo $?`
fi
