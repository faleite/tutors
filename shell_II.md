# Shell - Módulo II
## *Crição de scripts e Estruturas lógicas*

#### Exibir mensagem no Shell

Função|Comando|
------|-------|
*Exibir mensagem no shell*| echo 'Olá mundo, Shell script!'

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
