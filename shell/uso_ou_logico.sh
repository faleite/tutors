#! /bin/bash
#
# file: uso_ou_logico.sh
#
# Exemplo de utilização do || como condicional
# de comandos do Shell (ou boleano)

DIRETORIO="Geofisicando"

[ -d 'Geofisicando' ] || {  # -d (verifica existencia de diretório)
    echo "Diretório $DIRETORIO não encontrado!"
    echo "Será Criado novo diretório..."
    mkdir "$DIRETORIO"

    exit 0
}

echo "O diretório $DIRETORIO já existe na pasta atual!"
exit 1
