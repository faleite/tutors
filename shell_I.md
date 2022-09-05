# SHELL - Módulo I "Comandos Básicos"

#### Comandos

Função|Comando|
------|-------|
Exibir mensagem ou nome de uma variável| **echo $SHELL** -> [nome-variavel]
Exemplo 1| $SHELL -> caminho do shell
Exemplo 2| $HOME -> caminho do usuário
Mostrar diretório atual| **pwd**
Ir para diretório a cima| **cd ..**
Ir para diretório anterior| **cd -**
Ir para a pasta home do usuario| **cd**
Representa o diretório Home| **$HOME**

#### Modo listar arquivos (ls)

Função|Comando|
------|-------|
Exibir arquivos com seu id (hinode)| **ls -i**
Listar todos os arquivos em formato especifico| __ls *.md__ (md = ex. de formato)
Listar arquivos ocultos e não ocultos| **ls -a**
Listar arquivos e suas permissões| **ls -l**

#### Gerenciar permissões de arquivos

Função|Comando|
------|-------|
Tipos de permissões| r (ler), w (escrever), x (executar)
Grupo de permissões| g (geral), u (usuários), o (outros)
Alterar permissões| **chmod** (ex. chmod o=r tarefas.md)

#### Criar variavel

Função|Comando|
------|-------|
Criar uma variavel para um diretório| **NOME="/caminho_e/nome_do_arquivo.txt/"**
Mostrar o caminho da variavel| **dirname $NOME_VARIAVEL**
Obter nome do arquivo| **basename $NOME_ARQUIVO**
Obter nome do arquivo sem mostrar sua extenção| **basename $NOME_ARQUIVO.txt**

#### Manipular arquivos e diretórios

Função|Comando|
------|-------|
Remover diretorio| **rm -rf 'nome-diretorio'**
Remover diretorio| **rmdir -r 'nome-diretorio'**
Remover diretorio vazio| **rmdir 'nome-diretorio'**
Remover arquivo| **rm 'nome-arquivo'**
Remover arquivo com pedido de confirmação| **rm -i 'nome-arquivo'**
Mover arquivo/diretório| **mv 'nome-arquivo' ~/endereço/onde/vai-mover**
Mover todos os arquivos com a mesma extensão| **mv *.md ~/endereço/para-onde/vai-mover**
Renomear arquivo/diretório| **mv nome-arquivo.py novo-nome.py**
Criar arquivo| **touch nomearquivo.txt**
Mostrar na tela o conteúdo do arquivo| **cat [nome-do-arquivo]**
Gerar diretório| **mkdir [nome-do-diretorio]**
Gerar diretório dentro de diretório| **mkdir -p [teste/teste1/teste3]**
Passar mais de um comando no shell| **;** ex. -> mkdir testeCat; cd testeCat
Gerar arquivo temporário| **mktemp ./tmp.XXXX**
./ | diretório atual
tmp.XXXX| nome do arquivo
XXXX| gera uma extensão aleatória

#### Hitórico de comandos

Função|Comando|
------|-------|
Exibir hitórico de comandos| **history**
Executar comando através do numero do seu hitórico| **![numero-do-comando]**
Executar último comando| **!!**
Exibir busca no hitórico apenas com o parte do seu nome| **![parte-do-nome]** ex. **!echo**
/\ *Para buscar ele percorre o histórico de traz para frente
Mostrar útimas 5 linhas do hitórico de comandos| **history I tail -5** (I -> Barra Lateral)
Enviar hitórico das útimas 5 linhas de comandos p/ um arquivo| **history I tail -5 >> arquivo.txt**

#### . e ..

Função|Comando|
------|-------|
. | Representa o diretório atual
.. | Representa o diretório acima do atual
./[nome-arquivo] | Acessa o arquivo no diretório atual

#### Copiar arquivos e diretórios

Função|Comando|
------|-------|
Copiar arquivo| **cp [nome-arquivo] [novo-nome ou local-a-salvar]**
Copiar diretório| **cp -r [nome-diretório] [novo-nome ou local-a-salvar]**

#### Exibir conteúdo dos arquivos e concatenar

Função|Comando|
------|-------|
Enviar texto para arquivo pelo shell| **echo "linha do texto" >> nome-arquivo.txt**
Exibir conteúdo do arquivo no shell| **cat nome-arquivo.txt**
Exibir conteúdo de mais de um arquivo no shell| **cat arq2.txt arq1.txt**
Concatenar texto de mais de um arquivo| **cat arq2.txt arq1.txt >> arqConcatenado.txt**
Exibir conteúdo do arquivo com linhas numeradas no shell| **cat -n arqConcatenado.txt**

#### Pipe

Função|Comando|
------|-------|
Escrever codigo em mais de uma linmha no shell| **\** -> Para continuar na proxima linha
Calculadora do shell com float| **bc -l**
Executar mais de um comando no shell| **I** (Barra Lateral) ex:
```
echo "2+1" | bc -l
3
```
``````
>>> ec>ho "2+3" | bc -l >> arq.txt
>>> cat arq.txt
>>> 5
``````
#### Cut -> filtrar saídas

Exemplos:
``````
>>> echo "Fabricio" | cut -c1
>>> F
>>> cho "Fabricio" | cut -c2
>>> a
>>> cho "Fabricio" | cut -c2-3
>>> ab
``````
Formato csv:
``````
>>> echo -e "1,2,3\n4,5,6\n7,8,9" # -e -> desconsidera caracteres especiais
>>> 1,2,3
>>> 4,5,6
>>> 7,8,9
``````
Criar arquivo com o conteúdo acima:
``````
>>> echo -e "1,2,3\n4,5,6\n7,8,9" >> matriz.csv
>>> cat matriz.csv
>>> 1,2,3
>>> 4,5,6
>>> 7,8,9
``````
Pegar coluna do texto:
``````
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
``````
#### head -> Exibir as primeiras linhas de arquivos

Função|Comando|
------|-------|
Exibir as dez primeiras linhas| **head [nome-arquivo]**
Exibir numeros de linhas desejado| **head -n 3 [nome-arquivo]** # 3 (numero de linhas)
Exibir numeros de linhas desejado de varios arquivos| **head -n 3 [nome-arq-1] [nome-arq-2]**

Exemplo de combinção de código com **pipe** e **head**:
``````
>>> echo -e "1,2,3\n4,5,6\n7,8,9\n10,11,12" | head -n 1
>>> 1,2,3
``````
#### tail -> Exibir ultimas linhas de arquivos

Função|Comando|
------|-------|
Exibir as dez últimas linhas| **tail [nome-arquivo]**
Exibir últimos numeros de linhas desejado| **tail -n 3 [nome-arquivo]** # 3 (numero de linhas)

Exemplo de combinção de código com **pipe** e **tail**:
``````
>>> echo -e "1,2,3\n4,5,6\n7,8,9\n10,11,12" | tail -n 2 >> tail.txt
>>> cat tail.txt
>>> 7,8,9
>>> 10,11,12
``````
Função|Comando|
------|-------|
Monitorar um arquivo| **tail -f [nome-arquivo]**
/\ *Mostra no shell as alteraçoes do arquivo em tempo real
Temporizar comandos| **sleep 5; echo "Dormi por 5 segundos"**
Temporizar comandos| **sleep 5; echo "Nova linha" >> arquivo.txt**

#### Método "seq" para exibir sequência de numeros

Função|Comando|
------|-------|
Exiber sequência de numeros de 0 a 5| **seq 0 1 5** (0 = inicio; 1 = passo; 5 = final)
Salvar sequência de numeros em arquivo| **seq 1 1 3 >> numeros.txt**
Salvar sequência de numeros em uma variável| **lista=$(seq 0 1 5)**
Mostar o conteúdo da variável| **echo $lista**

**Exemplo de código com "seq"**:
```
for n in $(seq 0 1 5)
for> do
for> echo "valor de $n"
for> done
valor de 0
valor de 1
valor de 2
valor de 3
valor de 4
valor de 5

