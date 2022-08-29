# SHELL
___

##### COMANDOS

EXIBIR MENSAGEM OU NOME DE UMA VARIÁVEL: **echo $SHELL** -> [nome-variavel]
    - $SHELL -> caminho do shell
    - $HOME -> caminho do usuário

MOSTRAR DIRETÓRIO ATUAL: **pwd**

IR PARA DIRETÓRIO A CIMA: **cd ..**

IR PARA DIRETÓRIO ANTERIOR: **cd -**

IR PARA A PASTA HOME DO USUARIO: **cd**

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

RENOMEAR ARQUIVO/DIRETÓRIO: **mv nome-arquivo.py novo-nome.py**

CRIAR ARQUIVO: **touch nomearquivo.txt**

MOSTRAR NA TELA O CONTEÚDO DO ARQUIVO: **cat [nome-do-arquivo]**

GERAR DIRETÓRIO: **mkdir [nome-do-diretorio]**

GERAR DIRETÓRIO DENTRO DE DIRETÓRIO: **mkdir -p [teste/teste1/teste3]**

GERAR ARQUIVO TEMPORÁRIO: **mktemp ./tmp.XXXX**
* ./ -> diretório atual
* tmp.XXXX -> nome do arquivo
* XXXX -> gera uma extensão aleatória

##### HITÓRICO DE COMANDOS

EXIBIR HITÓRICO DE COMANDOS: **history**

EXECUTAR COMANDO ATRAVÉS DO NUMERO DO SEU HITÓRICO: **![numero-do-comando]**

EXECUTAR ÚLTIMO COMANDO: **!!**

EXIBIR COMANDO ATRAVÉS DE BUSCA NO HITÓRICO APENAS COM O PARTE DO SEU NOME:
**![parte-do-nome]** ex. **!echo**
(Para buscar ele percorre o histórico de traz para frente)

MOSTRAR ÚTIMAS 5 LINHAS DO HITÓRICO DE COMANDOS: **history | tail -5**

ENVIAR O HITÓRICO DAS ÚTIMAS 5 LINHAS DE COMANDOS PARA UM ARQUIVO:
**history | tail -5 >> arquivo.txt**

##### . e ..

. -> REPRESENTA O DIRETÓRIO ATUAL

.. -> REPRESENTA O DIRETÓRIO ACIMA DO ATUAL

./[nome-arquivo] -> ACESSA O ARQUIVO NO DIRETÓRIO ATUAL


