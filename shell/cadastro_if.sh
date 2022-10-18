#! /bin/bash
#
# Exemplo de sistema de cadatro com o bloco if, elif, else.

MENU="
Menu:
1 - Ajuda
2 - Ver Cadastro
3 - Editar
"

echo "$MENU"
read -p "Digite a opção: " OPCAO

# cadatro.txt = Fabricio:95118601:devfaleite@gmail.com
CADASTRO=$(cat "cadastro.txt")

NOME=$(echo "$CADASTRO" | cut -d":" -f1)
TELEFONE=$(echo "$CADASTRO" | cut -d":" -f2)
EMAIL=$(echo "$CADASTRO" | cut -d":" -f3)

USUARIO="
NOME=$NOME
TELEFONE=$TELEFONE
EMAIL=$EMAIL
"

if [ "$OPCAO" -eq "1" ]
then
    echo "Programa de cadastro de usuário!
- Para acessar o cadatro digite: 2
- Para editar o cadatro digite:  3"

elif [ "$OPCAO" -eq "2" ]
then
    echo "$USUARIO"

elif [ "$OPCAO" -eq "3" ]
then
    echo "Edição de cadastro"
    read -p "NOME: " NOME2
    read -p "TELEFONE: " TELEFONE2
    read -p "EMAIL: " EMAIL2
    echo "$NOME2:$TELEFONE2:$EMAIL2" > cadastro.txt

else
    echo "Opção inválida!"
    exit 1
fi
