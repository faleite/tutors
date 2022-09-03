# SHELL
## MÓDULO I -> "COMANDOS BÁSICOS"
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

REMOVER DIRETORIO: **rmdir -r 'nome-diretorio'**

REMOVER DIRETORIO VAZIO: **rmdir 'nome-diretorio'**

REMOVER ARQUIVO: **rm 'nome-arquivo'**

REMOVER ARQUIVO COM PEDIDO DE CONFIRMAÇÃO: **rm -i 'nome-arquivo'**

MOVER ARQUIVO/DIRETÓRIO: **mv 'nome-arquivo' ~/endereço/para-onde/vai-mover**

MOVER TODOS OS ARQUIVOS COM A MESMA EXTENSÃO: **mv *.md ~/endereço/para-onde/vai-mover**

RENOMEAR ARQUIVO/DIRETÓRIO: **mv nome-arquivo.py novo-nome.py**

CRIAR ARQUIVO: **touch nomearquivo.txt**

MOSTRAR NA TELA O CONTEÚDO DO ARQUIVO: **cat [nome-do-arquivo]**

GERAR DIRETÓRIO: **mkdir [nome-do-diretorio]**

GERAR DIRETÓRIO DENTRO DE DIRETÓRIO: **mkdir -p [teste/teste1/teste3]**

PASSAR MAIS DE UM COMANDO NO SHELL: **;** ex. -> mkdir testeCat; cd testeCat
(Os comando são separados por **;**)

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

##### COPIAR ARQUIVOS E DIRETÓRIOS

COPIAR ARQUIVO: **cp [nome-arquivo] [novo-nome ou local-a-salvar]**

COPIAR DIRETÓRIO: **cp -r [nome-diretório] [novo-nome ou local-a-salvar]**

##### EXIBIR CONTEÚDO DOS ARQUIVOS E CONCATENAR

ENVIAR TEXTO PARA ARQUIVO PELO SHELL: **echo "linha do texto" >> nome-arquivo.txt**

EXIBIR CONTEÚDO DO ARQUIVO NO SHELL: **cat nome-arquivo.txt**

EXIBIR CONTEÚDO DE MAIS DE UM ARQUIVO NO SHELL: **cat arq2.txt arq1.txt**

CONCATENAR TEXTO DE MAIS DE UM ARQUIVO: **cat arq2.txt arq1.txt >> arqConcatenado.txt**

EXIBIR CONTEÚDO DO ARQUIVO COM LINHAS NUMERADAS NO SHELL: **cat -n arqConcatenado.txt**

##### PIPE

ESCREVER CODIGO EM MAIS DE UMA LINMHA NO SHELL: **\** -> Para continuar na proxima linha

CALCULADORA DO SHELL COM FLOAT: **bc -l**

EXECUTAR MAIS DE UM COMANDO NO SHELL: **|** -> ex.
>>> echo "2+1" | bc -l
>>> 3

>>> ec>ho "2+3" | bc -l >> arq.txt
>>> cat arq.txt
>>> 5

##### CUT -> FILTRAR SAÍDAS

EXEMPLOS:
>> echo "Fabricio" | cut -c1
>>> F
>>> cho "Fabricio" | cut -c2
>>> a
>>> cho "Fabricio" | cut -c2-3
>>> ab

FORMATO CSV:
>>> echo -e "1,2,3\n4,5,6\n7,8,9" # -e -> desconsidera caracteres especiais
>>> 1,2,3
>>> 4,5,6
>>> 7,8,9

CRIAR ARQUIVO COM O CONTEÚDO ACIMA:
>>> echo -e "1,2,3\n4,5,6\n7,8,9" >> matriz.csv
>>> cat matriz.csv
>>> 1,2,3
>>> 4,5,6
>>> 7,8,9

PEGAR COLUNA DO TEXTO:
>>> cat matriz.csv | cut -c1
>>> 1
>>> 4
>>> 7
>>> cat matriz.csv | cut -d"," -f1 # f1 -> campo 1
>>> 1
>>> 4
>>> 7
>>> cat matriz.csv | cut -d"," -f2
>>> 2
>>> 5
>>> 8
>>> cat matriz.csv | cut -d"," -f2-3
>>> 2,3
>>> 5,6
>>> 8,9

##### head -> EXIBIR AS PRIMEIRAS LINHAS DE ARQUIVOS

EXIBIR AS DEZ PRIMEIRAS LINHAS: **head [nome-arquivo]**

EXIBIR NUMEROS DE LINHAS DESEJADO: **head -n 3 [nome-arquivo]** # 3 (numero de linhas)

EXIBIR NUMEROS DE LINHAS DESEJADO DE VARIOS ARQUIVOS: **head -n 3 [nome-arq-1] [nome-arq-2]**

EXEMPLO DE COMBINÇÃO DE CÓDIGO COM **PIPE** E **HEAD**:
>>> echo -e "1,2,3\n4,5,6\n7,8,9\n10,11,12" | head -n 1
>>> 1,2,3

##### tail -> EXIBIR ULTIMAS LINHAS DE ARQUIVOS

EXIBIR AS DEZ ÚLTIMAS LINHAS: **tail [nome-arquivo]**

EXIBIR ÚLTIMOS NUMEROS DE LINHAS DESEJADO: **tail -n 3 [nome-arquivo]** # 3 (numero de linhas)

EXEMPLO DE COMBINÇÃO DE CÓDIGO COM **PIPE** E **HEAD**:
>>> echo -e "1,2,3\n4,5,6\n7,8,9\n10,11,12" | tail -n 2 >> tail.txt
>>> cat tail.txt
>>> 7,8,9
>>> 10,11,12

MONITORAR UM ARQUIVO: **tail -f [nome-arquivo]**
(Mostra no shell as alteraçoes do arquivo em tempo real)

TEMPORIZAR COMANDOS: **sleep 5; echo "Dormi por 5 segundos"
**sleep 5; echo "Nova linha" >> novo-arquivo.txt**
