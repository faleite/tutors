#! /bin/bash
#
# Exemplo de uso da estrutura condicional "case"
# para gerar um menu de opções em Shell Script

MENU="
1 - Ajuda
2 - Versão
3 - Exibir mensagem
4 - Criar Arquivo
"

echo "$MENU"  # Mostra a variável menu no shell

AJUDA="Programa de exemplo de uso do 'case' em shell script"
VERSAO="Versão 1.0"

read -p "Escolha uma opção do menu: " OPCAO  # Recebe a opção escolhida pelo usuário

case "$OPCAO" in
    1)  # se a variável opção for igual a 1
        echo "$AJUDA"  # Exibe a variável AJUDA
    ;;  # fecha o bloco de opção
    2)
        echo "$VERSAO"
    ;;
    3)
        echo "Olá galera do canal Geofisicando!"
    ;;
    4)  # se a variável opção for igual a 4
        echo "Criando arquivo..."  # exibe o texto
        touch arquivo.txt  # cria o arquivo.txt
    ;;
    *)  # Representa qualquer opção que não seja 1, 2, 3, ou 4 (Default)
        echo "Opção $OPCAO desconhecida!"
        exit 1  # exemplifica que houve um erro de execução
    ;;
esac  # fecha o bloco case (é o case invertido)
