# Shell - Módulo II
## *Crição de scripts e Estruturas lógicas*

### 1. Exibir mensagem no Shell

Função|Comando|
------|-------|
*Exibir mensagem no shell*| ```echo 'Olá mundo, Shell script!'```
---

#### Criando script de mensagem

Função|Comando|
------|-------|
*Criar arquivo*| touch olamundo.sh
*Dar permissão de execussão sh no arquivo*| chmod 777 ./olamundo.sh
*Executar script*| ./olamundo.sh

*script do arquivo olamundo.sh*
```sh
#!/bin/zsh

# echo "Olá mundo, Shell Script!"

MSG="Olá mundo, Shell Script!"

echo $MSG # exibir mensagem da variavel MSG

pwd # exibir caminho do arquivo
```

---

### 2. "input" no shell com o "read"
#### *Requisita informação do usuário pela linha de comando*

*Uso do **read** sem input:*
```sh
$ read NOME # Criar a variável NOME
$ Fabricio # Inserir atribulto da variável NOME

$ echo $NOME
$ Fabricio
```

*Uso do **read** com input:*
```sh
$ read -p 'Digite seu nome: ' NOME # no bash
$ Digite seu nome: Fabricio Araujo # input

$ read NOME\?'Digite seu nome: ' # no zsh
$ Digite seu nome: Fabricio Araujo # input

$ echo $NOME
$ Fabricio Araujo
```

Função|Comando|
------|-------|
*Copiar arquivo*|`` $ cp olamundo.sh mensagem.sh``
*Permissão de execução do script*| chmod 777 mensagem.sh
*Chamar script*| ./mensagem.sh

*script do arquivo mensagem.sh:*
```sh
#!/bin/zsh

echo 'Bem vindo ao programa de usuário!' # Exibe mensagem no Shell

read NOME\?'Digite o seu nome: ' # inpunt do shell zsh

echo "$NOME, Bem vindo ao canal Geofisicando!" # Exibe mensagem e a variável $NOME
```

---

### 3. Variávies no shell

```sh
# Dentro dos scripts do shell tudo é interpretado como string
numero1= 5 # 5 = string
n2= '5' # 5 = string
n3= "5" # 5 = string
```

```sh
# Para interpretar números é usado a calculadora do shell
echo "5/5" | bc -l # bc -l = calculadora
```
```sh
# Todas as variáveis são do tipo global
# Quando há variáveis e strings, deve-se estarem entre "Aspas duplas"

# Uso de variável
$NOME # Sem proteção de variável
${NOME} # Proteção de variável

# Exemplo
VAR="${NOME}sou uma variável!"
VAR="$NOMEsou uma variável!"
```

#### Script para calcular idade de usuário

*Exemplo script.sh:*

```sh
#!/bin/zsh

# Exercício: Calcular idade do usuário a partir
# da data de nascimento e imprimir na tela.

# Pedir as informações ao usuário
# read -p 'Digite seu nome: ' NOME # comando no bash
read NOME\?'Digite seu nome: '
read NASCIMENTO\?'Digite sua data de nascimento (DD/MM/AAAA): '

# Calcular idade
ANO=$(echo $NASCIMENTO | cut -d"/" -f3)
ANO_ATUAL=$(date +%Y)
IDADE=$(echo "$ANO_ATUAL-$ANO" | bc -l)

# Imprimir o resultado na tela
echo "Olá $NOME"
echo "Este ano você tem/terá $IDADE anos"
```
---

### 4. Expansão de variáveis
#### *Manipulação de strings:*

* *Uso de variáveis:*
```sh
# Pode ser usado das duas formas
$ echo $var
$ echo ${var} # Desta forma podemos fazer a expansão de variáveis

# Exenplo:
$ var="Fabricio Leite"
$ echo $var
$ Fabricio Leite
$ echo ${var}
$ Fabricio Leite
```

* *Acessar variáveis por delimitação de caracteres:*
```sh
$ echo ${var}
$ Fabricio Leite

$ echo ${var:9} # Acessa a string do nono caractere para frente
$ Leite

$ echo ${var:0:8} # Acessa a string do primeiro (0) caractere até o oitavo
$ Fabricio

# Salvar estes caracteres em uma variável
$ var=${var:9}
$ echo $var
$ Leite
```

* *Acessar números de caracteres com o #:*
```sh
$ echo ${#var}
$ 14
```

* *Substituição de caracteres e strings:*
```sh
# Substitui "Leite" por "Araujo"
$ echo ${var/Leite/Araujo}
$ Fabricio Araujo

# Nova variável
$ var2="Olá Fabricio Leite, seu nome é Leite?"

# Substitui espaço vazio por nada (mesmo que deletar o espaço vazio)
$ echo ${var2/ /} # deleta apenas o primeiro espaço vazio
$ OláFabricio Leite, seu nome é Leite?

$ echo ${var2// /} # deleta todos os espaços vazios
$ OláFabricioLeite,seunomeéLeite?

# Substitui todas as strings "Leite" por "Araujo"
$ echo ${var2//Leite/Araujo}
$ Olá Fabricio Araujo, seu nome é Araujo?
```

* *Estruturas condicionais:*

```sh
$ file="arquivo.txt" # Cria uma variável
$ echo $file
$ arquivo.txt
```

```sh
$ echo ${file##*.} # Mostrar no shell a variável do ponto para frente
$ txt

$ echo ${file%%.*} # Mostrar no shell a variável do ponto para tráz
$ arquivo
```

```sh
# Upper e Lower Case
$ echo ${file:u}
$ ARQUIVO.TXT
$ echo ${file:l}
$ arquivo.txt
```

```sh
$ echo ${vazia:-A variável está vazia} # Exibe mensagem caso a variável estaja vazia
$ A variável está vazia
$ echo ${file:-A variável está vazia} # Se não, exibe a variável
$ arquivo.txt

$ echo ${file:+Variável tem um valor} # Exibe mensagem se a variável tiver valor
$ Variável tem um valor
$ echo ${vazia:+Variável tem um valor} # Se não, exibe o vazio

$ echo ${vazia:=valor padrão} # Adota valor padrão caso a mensagem esteja vazia
$ valor padrão
$ echo ${vazia}
$ valor padrão
$ echo ${file:=valor padrão} # Se não, exibe o valor da variável
$ arquivo.txt
$ echo ${vazia}
$ valor padrão

$ echo ${vazia2:?Mensagem de erro\!} # Gerar mensagem, caso a variável não exista
$ zsh: vazia2: Mensagem de erro!
```
---

#### *Script para calcular idade de usuário, utilizando a expansão de variáveis:*

```sh
#!/bin/zsh

# Exercício 2: Calcular idade do usuário a partir
# da data de nascimento e imprimir na tela.
#
# Modificação: Utiliza a expansão de variáveis

# Pedir as informações ao usuário
# read -p 'Digite seu nome: ' NOME # comando no bash
read NOME\?'Digite seu nome: '
# echo "Nome cadastrado: ${NOME:?Usuário não forneceu o nome\!}"
# \! (o \ frisa que o ! é uma string)
echo "Nome cadastrado: ${NOME:?Usuário não forneceu o nome!}"
read NASCIMENTO\?'Digite sua data de nascimento (DD/MM/AAAA): '
echo "Data de Nasc.: ${NASCIMENTO:?Usuário não forneceu a data de nascimento!}"

# Calcular idade
# ANO=$(echo $NASCIMENTO | cut -d"/" -f3) # forma com echo
ANO=${NASCIMENTO##*/}
ANO_ATUAL=$(date +%Y)
IDADE=$(echo "$ANO_ATUAL-$ANO" | bc -l)

# Imprimir o resultado na tela
echo "Olá $NOME"
echo "Este ano você tem/terá $IDADE anos"
```
---

### 5. Estruturas condicionais

#### *Comparação de strings*

* *Uso do **if** no shell:*

```sh
$ VAR="Fabricio" # Cria uma variável de nome VAR com parâmetro "Fabricio"
$ echo $VAR # Mostrar variável no shell
$ Fabricio # Resultado
```

> = (Verificar igualdade)
```sh
$ if [ "$VAR" = "Fabricio" ] # Se a variável for igual a "Fabricio"
$ then # Faça (Então)
$ echo "Olá usuário $VAR" # Mostre a mensagem
$ fi # Fecha o bloco if (if ao contario = fi)
$ Olá usuário Fabricio # Resultado
```

> != (Verificar se é diferente)
```sh
$ if [ "$VAR" != "Leite" ]
$ then
$ echo "$VAR é diferente de Leite"
$ fi
$ Fabricio é diferente de Leite
```
> -n (Verifificar se é não nula)
```sh
$ if [ -n "$VAR" ]
$ then
$ echo "Variável tem um valor: $VAR"
$ fi
$ Variável tem um valor: Fabricio
```

> -z (Verificar se é nula)
```sh
$ if [ -z "$NOME_USUARIO" ]
$ then
$ echo "Usuário precisa passar o nome"
$ fi
$ Usuário precisa passar o nome
```

* *Uso do **if** no script, exemplo 1:*

```sh
#!/bin/zsh
#
# Exibe uma mensagem na tela se o usuário quiser.

read RESPOSTA\?'Deseja exibir uma mensagem? (y/n)' # Criar um input na variável RESPOSTA

MENSAGEM='Olá usuário, tudo bem?' # Cria variável

if [ "$RESPOSTA" = "y" ] # Se a variável RESPOSTA for igual a y
then # Faça (Então)
    echo "$MENSAGEM" # Mostre a variável MENSAGEM
fi # Fim do bloco if
```

* *Uso do **if** no script, exemplo 2:*

```sh
#!/bin/zsh
#
# Listar diretório se o usuário quiser.

read RESPOSTA\?'Deseja listar o diretório?(y/n) ' # input

if [ "$RESPOSTA" = "y" ]
then
    ls # Comando ls para listar diretório
fi
```
---

### Comparação númerica com o bloco if

* *Exemplos com script:*

```sh
#!/bin/zsh
#
# Exemplifica as comparações númericas com blocos if:

NUM="10"

# Verificar se NUM é < 11 (menor)
if [ "$NUM" -lt "11" ]
then
    echo "$NUM < 11"
fi

# Verificar se NUM é > 9 (maior)
if [ "$NUM" -gt  "9" ]
then
    echo "$NUM > 9"
fi

# Verificar se NUM é <= 10 (menor ou igual)
if [ "$NUM" -le "10" ]
then
    echo "$NUM <= 10"
fi

# Verificar se NUM é >= 10 (maior ou igual)
if [ "$NUM" -ge "10" ]
then
    echo "$NUM >= 10"
fi

# Verificar se NUM é = 10 (igual)
if [ "$NUM" -eq "10" ]
then
    echo "$NUM = 10"
fi

# Verificar se NUM é != 9 (diferente)
if [ "$NUM" -ne "9" ]
then
    echo "$NUM != 9"
fi
```
---

### Bloco if com múltiplas condicionais: if, elif, else

* *Exemplo script.sh:*
```sh
#!/bin/bash
#
# Informa se o usuário poderá assistir a um filme com
# censura para maiores e com o ingresso que custa 50R$
# Exemplo de bloco if, elif, else do Shell.

read -p "Qual a sua idade? " IDADE # no zsh -> read IDADE\?"Qual ... idade? "
read -p "Quanto tem de dinheiro? " DINHEIRO

if [ "$IDADE" -lt "18" ]
then
	echo "O usuário não poderá assistir o filme"
	echo "A censura é para maiores de 18 anos e o usuário tem $IDADE anos"
elif [ "$DINHEIRO" -lt "50" ]
then
	echo "O usuário não poderá assistir o filme"
	echo "O ingresso custa 50R$ e o usuário só tem $DINHEIRO R\$"
else
	echo "O usuário Poderá assistir ao filme!"
fi
```

#### Mini sitesma de cadastro:

```sh
#! /bin/bash
#
# File: cadastro_if.sh
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
```

#### Verifica faixa etária do Usuário

```sh
#! /bin/bash
#
# file: faixa_etaria_if.sh:*
#
#Escreva um programa em shell script que pede e recebe a idade do usuário a
#partir da linha de comandos, e calcula a faixa etária do usuário.
#Utilize blocos IF, porém construa a lógica dos testes de modo a fazer
#o mínimo de testes possível.
#
#As faixas etárias são:
#
#De 0 a 2 anos - Bebê
#De 2 a 14 anos - Criança
#De 14 a 18 anos - Adolescente
#De 18 a 65 anos - Adulto
#Acima de 65 anos - Idoso

read -p "Qual a sua idade? " IDADE

if [ "$IDADE" -gt "65" ]
then
	echo "O usuário é idoso"

elif [ "$IDADE" -gt "18" ]
then
	echo "O usuário é adulto"

elif [ "$IDADE" -gt "14" ]
then
	echo "O usuário é adolescente"

elif [ "$IDADE" -gt "2" ]
then
	echo "O usuário é criança"

elif [ "$IDADE" -gt "0" ]
then
	echo "O usuário é bebê"

else
	echo "O usuário forneceu uma idade inválida!"
	exit 1  # Saída invalida -> [ ~> echo $? ]
fi
```

#### Informar conceito a partir da nota do usuário

```sh
#! /bin/bash
#
# file: conceito_if.sh:*
#
#Exercício
#Escreva um programa em shell script que pede e recebe a nota do usuário
#a partir da linha de comandos, e calcula o conceito. Utilize blocos IF,
#porém construa a lógica dos testes de modo a fazer o mínimo de testes possível.
#
#Os conceitos são:
#De 0 a 5 potos - Insuficiente
#De 5 a 7 pontos - Regular
#De 7 a 9 pontos - Bom
#Acima de 9 pontos - Excelente

read -p "Qual é a sua nota? " NOTA

if [ "$NOTA" -gt "9" ]
then
    echo "Excelente"

elif [ "$NOTA" -gt "7" ]
then
    echo "Bom"

elif [ "$NOTA" -gt "5" ]
then
    echo "Regular"

elif [ "$NOTA" -gt "0" ]
then
    echo "Insuficiente"

else
    echo "Nota inválida"
    exit 1
fi

# ---X--- #

### Modificação:
# Adaptado para aritmética de ponto flutuante (precisão de uma casa decimal).

# Multiplica a nota por 10 e pega o valor da casa decimal (7.7*10=77.0 -> 77)
NOTA=$(echo "$NOTA*10" | bc -l | cut -d"." -f1)

if [ "$NOTA" -gt "90" ]
then
	echo "Conceito Excelente"

elif [ "$NOTA" -gt "70" ]
then
	echo "Conceito Bom"

elif [ "$NOTA" -gt "50" ]
then
	echo "Conceito Regular"

elif [ "$NOTA" -gt "0" ]
then
	echo "Conceito Insuficiente"

else
	echo "Usuário não forneceu uma nota válida!"
	exit 1
fi
```
---

### Verificação de existência de arquivos e diretórios

```sh
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
```
*Comandos usados:*

Comando|Função
-------|------
**chmod 777 verifica_arq_dir.sh**| *Dar permição para execução de script*
**touch file.txt**| *Criar arquivo vazio*
**mkdir diretorio**| *Criar diretorio*

---
### Flags do bloco if

#### *Condicionais com o "e" lógico. ---> "-a":*
```sh
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
```

#### *Condicionais com o "ou" lógico. ---> "-o":*
```sh
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
```

### Condicionais de comando: Simbolos especiais no Shell

#### Separador de comandos com o " ; "
```sh
# O separador permite incluir em uma linha de execução mais de um bloco de comando
echo "primeiro_comando"; echo "segundo_comando"
primeiro comando
segundo comando

# O " ; " separa cada bloco de comando, fazendo executar um a um
cat "primeiro_comando"; echo "segundo_comando"
cat: primeiro_comando: No such file or directory
segundo_comando
```

#### E lógico (and boleano), com o " && "
```sh
# O " && " separa mais de um bloco de comando na linha de execução
# " && " executa o primeiro e o segundo comando
echo "primeiro_comando" && echo "segundo_comando"
primeiro_comando
segundo_comando

# O segundo bloco de comando fica condicionado ao sucesso do primeiro bloco
# Se o primeiro bloco não tiver sucesso, ele não execulta o proximo
cat "primeiro_comando" && echo "segundo_comando"  # && -> 'e' lógico
cat: primeiro_comando: No such file or directory
```

#### Ou lógico (or boleano), com o " | | "
```sh
# O " || " separa mais de um bloco de comando na linha de execução
# Com o " || " executa o primeiro bloco ou o segundo
echo "primeiro_comando" || echo "segundo_comando"
primeiro_comando

# Caso o primeiro bloco não tenha sucesso, ele executa o segundo
cat "primeiro_comando" || echo "segundo_comando"
cat: primeiro_comando: No such file or directory
segundo_comando
```

#### Uso do " && " ---> Executar se bem sucedido
```sh
# Verifica se há o arquivo no diretório. Se há, exibe mensagem
# -f (verifica arquivo)
[ -f arquivo.md ] && echo 'Arquivo encontrado!'  # && (and bool)
Arquivo encontrado!
```
```sh
# Identação de código com o "{}". Para mais linhas no bloco de código
[ -f arquivo.md ] && {  # Abre bloco
echo 'arquivo encontrado!'
echo 'outra linha de codigo'
}  # Fecha bloco
arquivo encontrado!
outra linha de codigo
```

*Exemplo com uso de script.sh:*
```sh
#! /bin/bash
#
# file: uso_e_logico.sh
#
# Exemplo de utilização do && como condicional
# de comandos do Shell

ARQUIVO="arquivo.md"

[ -f 'arquivo.md' ] && {  # -f (verifica existência de arquivo)
    echo "Arquivo $ARQUIVO encontrado!"
    echo "remover..."
    rm -i "$ARQUIVO"  # -i (pergunta se deve executar o comando)

    [ ! -f "$ARQUIVO" ] && {  # ! (negação) ! -f (verifica inexistência de arquivo)

        echo "O arquivo $ARQUIVO foi removido com sucesso!"
    }

    exit 0
}

echo "Arquivo $ARQUIVO NÂO encontrado!"
exit 1
```

#### Uso do " | | " ---> Executar se mal sucedido
```sh
# Verifica se há o arquivo no diretório. Se não houver, exibe mensagem
# -f (verifica arquivo)
[ -f ArqNaoExiste.md ] || echo 'Arquivo não encontrado!'  # || (or bool)
Arquivo não encontrado!
```
```sh
# Identação de código com o "{}". Para mais linhas no bloco de código
[ -f arqNAOex.txt ] || {  # Abre bloco
echo "Arquivo não encontrado\!"
echo "Outra mensagem"
}  # Fecha bloco
Arquivo não encontrado!
Outra mensagem
```

*Exemplo com uso de script:*
```sh
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
```

### Uso do "case" para gerar um menu de opções

*Exemplo com o uso de script:*

```sh
#! /bin/bash
#
# file: case.sh
#
# Exemplo de uso da estrutura condicional "case"
# para gerar um menu de opções em Shell Script

MENU="
1 - Ajuda
2 - Versão
3 - Exibir mensagem
4 - #!/bin/bash
"

echo "$MENU"  # Mostra a variável menu no shell

AJUDA="Programa de exemplo de uso do 'case' em shell script"
VERSAO="Versão 1.0"

read -p "Escolha uma opção do menu: " OPCAO  # Recebe a opção escolhida pelo usuário

case "$OPCAO" in
    1)  # se a variável opção for igual a 1
        echo "$AJUDA"  # Exibe a variável AJUDA
    ;;  # fecha o bloco de opção
    2)
        echo "$VERSAO"
    ;;
    3)
        echo "Olá galera do canal Geofisicando!"
    ;;
    4)  # se a variável opção for igual a 4
        echo "Criando arquivo..."  # exibe o texto
        touch arquivo.txt  # cria o arquivo.txt
    ;;
    *)  # Representa qualquer opção que não seja as anteriores (Default)
        echo "Opção $OPCAO desconhecida!"
        exit 1  # exemplifica que houve um erro de execução
    ;;
esac  # fecha o bloco case (é o case invertido)
```

### Parâmetros e flags:
Comandos|Flags|Função
--------|------|-----
**ls -l**| **-l**| *ativa o formato de listagem longa*
**ls -a**| **-a**| *lista todos os arquivos, inclusive ocultos*
**ls -1**| **-1**| *Lista arquivos em uma coluna*

*Exemplos:*

```sh
# cp --> cria copia de arquivo
$ cp algo.md copia.md

# rm --> deletar arquivo
$ rm copia.md

# basename --> pega o nome do arquivo
$ echo "$(basename home/lab/algo.md)"
algo.md  # nome do arquivo

# dirname --> pega o caminho do arquivo
$ echo "$(dirname home/lab/algo.md)"
home/lab  # caminho do arquivo
```

*Exemplo com script:*

```sh
#!/bin/bash
#
# file: basename.sh
#
# Exemplo de como passar parâmetros ao programa pela
# linha de comandos (Parâmetros posicionais)
#
# ./programa.sh p1 p2 p3 p4
#        ^      ^  ^  ^  ^
#        $0     $1 $2 $3 $4

echo "O nome do progrma no terminal é: $0"
echo "O nome do progrma é: $( basename $0)"

echo "O primeiro parâmetro passado foi: $1"
echo "O segundo parâmetro passado foi: $2"
echo "O terceiro parâmetro passado foi: $3"
echo "O quarto parâmetro passado foi: $4"

exit 0
```

*Saída do script:*

```sh
$ ./basename.sh a b c d
O nome do progrma no terminal é: ./basename.sh
O nome do progrma é: basename.sh
O primeiro parâmetro passado foi: a
O segundo parâmetro passado foi: b
O terceiro parâmetro passado foi: c
O quarto parâmetro passado foi: d
```

### Menu de parâmetros com "flags"
*Exemplo com script:*

```sh
#! /bin/bash#
#
# file: case_flags.sh
#
# Exemplo de uso da estrutura condicional "case"
# para gerar um menu de opções em Shell Script
# "Com o uso de flags"

AJUDA="
-h --help    Exibe ajuda e sai
-v --version Exibe versão e sai
-m           Exibe mensagem na tela
-c           Cria arquivo.txt
"

VERSAO="Versão 1.0"

case "$1" in
    # | --> pode dar duas opções separado pela "|"
    # podendo ser usada uma ou outra
    -h | --help)  # se o parâmetro $1 for igual a -h ou --version
        echo "$AJUDA"  # Exibe a variável AJUDA
    ;;  # fecha o bloco de opção

    -v | --version)
        echo "$VERSAO"
    ;;

    -m)
        echo "Olá galera do canal Geofisicando!"
    ;;

    -c)
        echo "Criando arquivo..."  # exibe o texto
        touch arquivo.txt  # cria o arquivo.txt
    ;;

    *)  # Representa qualquer opção que não seja uma das anteriores (Default)
        echo "Opção $1 desconhecida!"
        echo "Digite $(basename $0) -h para obter ajuda!"
        exit 1  # exemplifica que houve um erro de execução
    ;;
esac  # fecha o bloco case (é o case invertido)
```
