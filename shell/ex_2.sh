#!/bin/zsh

# Exercício 2: Calcular idade do usuário a partir
# da data de nascimento e imprimir na tela.
#
# Modificação: Utiliza a expansão de variáveis

# Pedir as informações ao usuário
# read -p 'Digite seu nome: ' NOME # comando no bash
read NOME\?'Digite seu nome: '
# echo "Nome cadastrado: ${NOME:?Usuário não forneceu o nome\!}" \! (o \ transforma o ! em string)
echo "Nome cadastrado: ${NOME:?Usuário não forneceu o nome!}"
read NASCIMENTO\?'Digite sua data de nascimento (DD/MM/AAAA): '
echo "Data de Nasc.: ${NASCIMENTO:?Usuário não forneceu a data de nascimento!}"

# Calcular idade
# ANO=$(echo $NASCIMENTO | cut -d"/" -f3) # forma com echo
ANO=${NASCIMENTO##*/}
ANO_ATUAL=$(date +%Y)
IDADE=$(echo "$ANO_ATUAL-$ANO" | bc -l)

# Imprimir o resultado na tela
echo "Olá $NOME"
echo "Este ano você tem/terá $IDADE anos"
