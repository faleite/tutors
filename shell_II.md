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
