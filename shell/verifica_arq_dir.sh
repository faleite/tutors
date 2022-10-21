#! /bin/bash
#
# file: verifica_arq_dir.sh
#
# Exemplo de verificação de arquivo e diretório com o bloco if

# Verificar se arquivo existe
if [ -f file.txt ]  # -f  --> flag para verificar existência de arquivos
then
    echo "Arquivo file.txt existente foi removido"
    rm "file.txt"  # remover arquivo
else
    echo "Arquivo file.txt NÃO existe!"
fi

# Verificar se diretório existe
if [ -d diretorio ]  # -d  --> flag para verificar existência de diretórios
then
    echo "Removendo Diretório"
    rm -r diretorio # remover diretório
else
    echo "Diretório não encontrado!"
    exit 1
fi
