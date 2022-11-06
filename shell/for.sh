#!/bin/bash
#
# file: for.sh
#
# Exemplo de uso do laço for em Shell Script
# em um mini sistema de cadastro de emails


ARQUIVO_CADASTRO="cadastro.txt"  # Variável

for i in $(seq 1 1 3)  # laço for com o seq --> repete o bloco de código 3 vezes
do  # Faça, execute
    echo "Cadastrar usuário $i"  # Variável $i armazena o número da contagem seq
    read -p "nome: " NOME  # Pergunta ao usuário e armazena a resposta na variável
    read -p "email: " EMAIL

    # Armazena no arquivo de cadastro
    echo "Usuário: $NOME" >> "$ARQUIVO_CADASTRO"
    echo "Email: $EMAIL" >> "$ARQUIVO_CADASTRO"
done  # Feito, concluído

echo "Usuários cadastrados:"
cat cadastro.txt
