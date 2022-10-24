#! /bin/bash
#
#file: ou_boleano.sh
#
# Exemplo de utilização do "ou" lógico no shell script.
#
#Programa dá permissão de acesso ao usuário "Dirack" ou ao grupo
# de pesquisa "Geofisicando"

read -p "Qual o seu nome de usuário? " USER
read -p "Qual o grupo de pesquisa você pertence? " GROUP

# flags: == (igual a), -o (or (ou) booleano (lógico))
if [ "$USER" == "Dirack" -o "$GROUP" == "Geofisicando" ]
then
    echo "Bem vindo, $USER"
    echo "Seu grupo de pesquisa é $GROUP"
    exit 0  # Saída valida -> [ ~> echo $? ]
fi

echo "Acesso NÃO autorizado!"
echo "Usuário: $USER"
echo "Grupo: $GROUP"
exit 1  # Saída invalida -> [ ~> echo $? ]
