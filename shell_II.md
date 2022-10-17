# Shell - Módulo II
## *Crição de scripts e Estruturas lógicas*

#### Exibir mensagem no Shell

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

#### "input" no shell com o "read" (Requisita informação do usuário pela linha de comando)

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

#### Variávies no shell

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

---

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

#### Expansão de variáveis
**Manipulação de strings:**

*Uso de variáveis:*
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

*Acessar variáveis por delimitação de caracteres:*
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

*Acessar números de caracteres com o #:*
```sh
$ echo ${#var}
$ 14
```

*Substituição de caracteres e strings:*
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

*Estruturas condicionais:*

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

#### Script para calcular idade de usuário, utilizando a expansão de variáveis

*Exemplo script.sh:*

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

#### Estruturas condicionais

**Comparação de strings**

*Uso do **if** no shell:*

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

*Uso do **if** no script, exemplo 1:*

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

*Uso do **if** no script, exemplo 2:*

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

#### Comparação númerica com o bloco if

*Exemplos com script:*

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

#### Bloco if com múltiplas condicionais: if, elif, else

*Exemplo script.sh:*
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
