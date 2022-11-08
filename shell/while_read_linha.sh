#!/bin/bash
#
# file: while_read_linha.sh
#
# Exemplo de como ler arquivo linha por linha em Shell Script.

ARQUIVO="cadastro.txt"  # Armazena o arquivo cadastro.txt na variável

i="1"  # i --> contador (inicia do número um)

# Ler linha por linha do arquivo
while read linha  # linha --> variável onde vai armazenar a linha do arquivo
do
    echo "Usuário $i"
    echo "NOME: $(echo $linha | cut -d":" -f1)"  # seleciona o primero campo da primeira linha
    echo "EMAIL: $(echo $linha | cut -d":" -f2)" # seleciona o segundo campo da primeira linha

    i=$((i+1))  # Faz o encremento da variável "i" até acabar as linhas do arquivo

# Redireciona o $ARQUIVO  para dentro while para leitura do arquivo
done < "$ARQUIVO"  # "<" --> sinal de redirecionamento
