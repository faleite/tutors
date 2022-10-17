#!/bin/zsh

# Exercício: Calcular idade do usuário a partir
# da data de nascimento e imprimir na tela.

# Pedir as informações ao usuário
# read -p 'Digite seu nome: ' NOME # comando no bash
read NOME\?'Digite seu nome: '
read NASCIMENTO\?'Digite sua data de nascimento (DD/MM/AAAA): '

# Calcular idade
ANO=$(echo $NASCIMENTO | cut -d"/" -f3)
ANO_ATUAL=$(date +%Y)
IDADE=$(echo "$ANO_ATUAL-$ANO" | bc -l)

# Imprimir o resultado na tela
echo "Olá $NOME"
echo "Este ano você tem/terá $IDADE anos"
