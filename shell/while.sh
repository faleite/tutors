#!/bin/bash
#
# file: while.sh
#
# Exemplo de uso do laço while em Shell Script
# Mini sistema de cadastro modificado


ARQUIVO_CADASTRO="cadastro.txt"  # Variável

i="1"

# Enquanto o $i for menor ou igual a 2 (i <= 2), executa o bloco de código
while [ "$i" -le "2" ]  # laço while --> repete o bloco de código 2 vezes
do  # Faça, execute
    echo "Cadastrar usuário $i"  # Variável $i armazena o número da contagem seq
    read -p "nome: " NOME  # Pergunta ao usuário e armazena a resposta na variável
    read -p "email: " EMAIL

    # Armazena no arquivo de cadastro
    echo "Usuário: $NOME" >> "$ARQUIVO_CADASTRO"
    echo "Email: $EMAIL" >> "$ARQUIVO_CADASTRO"

    i=$((i+1))  # i é igual a i mais 1
done  # Feito, concluído

echo  # Mostra sáida com espaço vazio
echo "Usuários cadastrados:"
cat cadastro.txt
