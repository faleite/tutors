#! /bin/bash#
#
# file: case_flags.sh
#
# Exemplo de uso da estrutura condicional "case"
# para gerar um menu de opções em Shell Script
# "Com o uso de flags"

AJUDA="
-h --help    Exibe ajuda e sai
-v --version Exibe versão e sai
-m           Exibe mensagem na tela
-c           Cria arquivo.txt
"

VERSAO="Versão 1.0"

case "$1" in
    # | --> pode dar duas opções separado pela "|"
    # podendo ser usada uma ou outra
    -h | --help)  # se o parâmetro $1 for igual a -h ou --version
        echo "$AJUDA"  # Exibe a variável AJUDA
    ;;  # fecha o bloco de opção

    -v | --version)
        echo "$VERSAO"
    ;;

    -m)
        echo "Olá galera do canal Geofisicando!"
    ;;

    -c)
        echo "Criando arquivo..."  # exibe o texto
        touch arquivo.txt  # cria o arquivo.txt
    ;;

    *)  # Representa qualquer opção que não seja uma das anteriores (Default)
        echo "Opção $1 desconhecida!"
        echo "Digite $(basename $0) -h para obter ajuda!"
        exit 1  # exemplifica que houve um erro de execução
    ;;
esac  # fecha o bloco case (é o case invertido)
