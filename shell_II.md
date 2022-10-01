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
