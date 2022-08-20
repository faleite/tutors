# SHELL
___

##### COMANDOS

EXIBIR MENSAGEM OU NOME DE
UMA VARIÁVEL: **echo $SHELL**
*$SHELL* = nome da variavel

MOSTRAR DIRETÓRIO ATUAL: **pwd**

IR PARA DIRETÓRIO A CIMA: **cd ..**

IR PARA DIRETÓRIO ANTERIOR: **cd -**

**$HOME** REPRESENTA O DIRETÓRIO HOME
___

##### MODO LISTAR ARQUIVOS (ls):

EXIBIR ARQUIVOS COM SEU ID (hinode):
**ls -i**

LISTAR TODOS OS ARQUIVOS EM FORMATO
ESPECIFICO: **ls *.md** (md = ex. de formato)

LISTAR ARQUIVOS OCULTOS E NÃO OCULTOS:
**ls -a**

LISTAR ARQUIVOS E SUAS PERMISSÕES:
**ls -l**
___

##### GERENCIAR PERMISSÕES DE ARQUIVOS

Tipos de permissões: r (ler), w (escrever),
x (executar)

Grupo de permissões: g (geral), u (usuários),
o (outros)

ALTERAR PERMISSÕES: **chmod**
(ex. chmod o=r tarefas.md)
___

CRIAR ARQUIVO: **touch nomearquivo**
___

##### CRIAR VARIAVEL

CRIAR UMA VARIAVEL PARA UM DIRETÓRIO:
**NOME="/caminho_e/nome_do_arquivo.txt/"**

MOSTRAR O CAMINHO DA VARIAVEL:
**dirname $NOME_VARIAVEL**

OBTER NOME DO ARQUIVO:
**basename $NOME_ARQUIVO**

OBTER NOME DO ARQUIVO SEM MOSTRAR
SUA EXTENÇÃO:
**basename $NOME_ARQUIVO .txt**
(.txt = ex. de formato)

##### MANIPULAR ARQUIVOS E DIRETÓRIOS:

REMOVER DIRETORIO: **rm -rf 'nome-diretorio'**

MOVER ARQUIVO/DIRETÓRIO: **mv 'nome-arquivo' ~/endereço/para-onde/vai-mover**

MOVER TODOS OS ARQUIVOS COM A MESMA EXTENSÃO: **mv *.md ~/endereço/para-onde/vai-mover**

RENOMEAR ARQUIVO: **mv nome-arquivo.py novo-nome.py**
