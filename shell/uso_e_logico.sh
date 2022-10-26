#! /bin/bash
#
# file: uso_e_logico.sh
#
# Exemplo de utilização do && como condicional
# de comandos do Shell

ARQUIVO="arquivo.md"

[ -f 'arquivo.md' ] && {  # -f (verifica existencia de arquivo)
    echo "Arquivo $ARQUIVO encontrado!"
    echo "remover..."
    rm -i "$ARQUIVO"  # -i (pergunta se deve executar o comando)

    [ ! -f "$ARQUIVO" ] && {  # ! (negação), ! -f (verifica inexistência de arquivo)

        echo "O arquivo $ARQUIVO foi removido com sucesso!"
    }

    exit 0
}

echo "Arquivo $ARQUIVO NÂO encontrado!"
exit 1
