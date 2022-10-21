#! /bin/bash
#
# file: e_logico.sh
#
# Exemplo de condicionais com "e" lógico.
#
# O usuário informa a idade e quanto de dinheiro possui. O programa
# verifica se ele poderá ir ao cinema para assistir um filme cujo ingresso
# custa 50R$ e com censura para maiores de 18 anos

read -p "Quantos anos você tem? " IDADE
read -p "Quanto de grana possui? " GRANA

# flags: -ge (maior ou igual que), -a (and (e) booleano (lógico))
if [ "$IDADE" -ge "18" -a "$GRANA" -ge "50" ]
then
    echo "Poderá ir ao cinema!"
    exit 0  # Saída valida -> [ ~> echo $? ]
fi

echo "Não poderá ir ao cinema!"
exit 1  # Saída invalida -> [ ~> echo $? ]
