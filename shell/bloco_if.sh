#!/bin/zsh
#
# Exibe uma mensagem na tela se o usuário quiser.

# read RESPOSTA\?'Deseja exibir uma mensagem?(y/n) '
read RESPOSTA\?'Deseja listar o diretório?(y/n) '

# MENSAGEM='Olá usuário, tudo bem?'

if [ "$RESPOSTA" = "y" ]
then
    # echo "$MENSAGEM"
    ls
fi
