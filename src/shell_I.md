# Shell - Módulo I - *"Comandos Básicos"*

#### Acessar documentação do shell

Comando|Função|
------|-------|
man ls| *Mostrar documentção da funçao ls*
man man| *Mostrar documentação da documentação*
man -f ls| *Mostrar documentação sucinta da função ls*
man -w ls| *Mostrar path da documentação de ls*

> *Manual do [**man**](https://guialinux.uniriotec.br/man/) em português online*

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
Ir para início da linha| **CTRL A**
Ir para o fim da linha| **CTRL E**
Cancelar linha| **CTRL C**

#### Modo listar arquivos (ls)

Função|Comando|
------|-------|
Exibir arquivos com seu id (hinode)| **ls -i**
Listar todos os arquivos em formato especifico| __ls *.md__ (md = ex. de formato)
Listar arquivos ocultos e não ocultos| **ls -a**
Listar arquivos e suas permissões| **ls -l** ou **ll**
Listar arquivos e diretórios inclusive ocultos| **ls -la**
Listar arquivos e diretórios adicionando barra aos diretórios| **ls -p**
lista arquivos e diretórios separados por vírgulas| **ls -m**
lista os arquivos por ordem decrescente das datas de atualização| **ls -t**
lista em ordem reversa| **ls -r**
*(.)* | diretório atual
*(..)* | diretório anterior

#### Gerenciar permissões de arquivos

Função|Comando|
------|-------|
Ex:.1 | drwxr--r--  1 fabricio  staff  0 23 Jan 21:56 Home
Ex:.2 | -rwxr--r--  1 fabricio  staff  0 23 Jan 21:56 file.md
Ex:.3 | lrwxr--r--  1 fabricio  staff  0 23 Jan 21:56 link.md
Tipos de permissões| r (read), w (write), x (execute)
Outra descriminação| d (diretório), - (arquivo comum), l (link)
Grupo de permissões| u (usuários), g (grupo), o (outros), a (todos)
Alterar permissões| **chmod** (ex. chmod o=r file.md) ou (o+r, o-r)
Alterar permissões de um link simbólico| **chmod -h**

#### Alterar data de arquivo ou diretório com o "touch"

Comando|Exemplo|
-------|------|
**touch -t**| touch -t 201307150842 file.txt
Data/Hora|Descrição
2013| ano
07| mês
15| dia
0842| hora


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
Remover diretorio forçadamente| **rm -rf 'nome-diretorio'**
Remover diretorio| **rm -r 'nome-diretorio'**
Remover arquivo| **rm 'nome-arquivo'**
Remover arquivo forçadamente| **rm -f 'nome-arquivo'**
Remover arquivo com pedido de confirmação| **rm -i 'nome-arquivo'**
Mover arquivo/diretório| **mv 'nome-arquivo' ~/endereço/onde/vai-mover**
Mover todos os arquivos com a mesma extensão| **mv *.md ~/endereço/para-onde/vai-mover**
Renomear arquivo/diretório| **mv nome-arquivo.py novo-nome.py**
Criar arquivo| **touch nomearquivo.txt**
Criar vários arquivos| **touch [file{0..10}.txt]**
Mostrar na tela o conteúdo do arquivo| **cat [nome-do-arquivo]**
Gerar diretório| **mkdir [nome-do-diretorio]**
Gerar diretório dentro de diretório| **mkdir -p [teste/teste1/teste3]**
Passar mais de um comando no shell| **;** ex. -> mkdir testeCat; cd testeCat
Gerar arquivo temporário| **mktemp ./tmp.XXXX**
./ | diretório atual
tmp.XXXX| nome do arquivo
XXXX| gera uma extensão aleatória
**-r**| *Recursiva*
**-f**| *Forçado*

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
Mostrar informações adicionais com o **cat**| **cat -e** (ex. exibe quebra de linhas)

#### Pipe e bc

Função|Comando|
------|-------|
Acessar calculadora do Shell| **bc**
Sair da calculadora do Shell| **quit**
Escrever codigo em mais de uma linmha no shell| **\** -> Para continuar na proxima linha
Calculadora do shell com float| **bc -l**
Executar mais de um comando no shell| **I** (Barra Lateral) ex:
```sh
echo "2+1" | bc -l
3
```
``````
>>> echo "2+3" | bc -l >> arq.txt
>>> cat arq.txt
>>> 5
``````
#### Cut -> filtrar saídas

Exemplos:
``````sh
>>> echo "Fabricio" | cut -c1
>>> F
>>> cho "Fabricio" | cut -c2
>>> a
>>> cho "Fabricio" | cut -c2-3
>>> ab
``````
Formato csv:
``````sh
>>> echo -e "1,2,3\n4,5,6\n7,8,9" # -e -> desconsidera caracteres especiais
>>> 1,2,3
>>> 4,5,6
>>> 7,8,9
``````
Criar arquivo com o conteúdo acima:
``````sh
>>> echo -e "1,2,3\n4,5,6\n7,8,9" >> matriz.csv
>>> cat matriz.csv
>>> 1,2,3
>>> 4,5,6
>>> 7,8,9
``````
Pegar coluna do texto:
``````sh
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
Exibir numeros de caracteres desejado| **head -c 7 [nome-arquivo]** # 7 (numero de caracteres)

Exemplo de combinção de código com **pipe** e **head**:
``````sh
>>> echo -e "1,2,3\n4,5,6\n7,8,9\n10,11,12" | head -n 1
>>> 1,2,3
``````
#### tail -> Exibir ultimas linhas de arquivos

Função|Comando|
------|-------|
Exibir as dez últimas linhas| **tail [nome-arquivo]**
Exibir últimos numeros de linhas desejado| **tail -n 3 [nome-arquivo]** # 3 (número de linhas)
Exibir últimos caracteres desejado| **tail -c 7 [nome-arquivo]** # 7 (número de caracteres)

Exemplo de combinção de código com **pipe** e **tail**:
``````sh
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

#### Exibir sequência de numeros com "seq"

Função|Comando|
------|-------|
Exiber sequência de numeros de 0 a 5| **seq 0 1 5** (0 = inicio; 1 = passo; 5 = final)
Salvar sequência de numeros em arquivo| **seq 1 1 3 >> numeros.txt**
Salvar sequência de numeros em uma variável| **lista=$(seq 0 1 5)**
Mostar o conteúdo da variável| **echo $lista**

**Exemplo de código com "seq"**:
``````sh
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
``````
#### Exibir números de linhas, palavras e caracteres com "wc"

Função|Comando|
------|-------|
Criar arquivo com quebra de linha| **echo -e "Linha 1\nLinha 2\nLinha 3" > texto.txt**
Mostrar conteúdo do arquivo| **cat texto.txt**
Exibir número de linhas, palavras e caracteres| **wc texto.txt**
Exibir número de linhas| **wc -l texto.txt**
Exibir número de palavras| **wc -w texto.txt**
Exibir número de caracteres| **wc -m texto.txt**
Exibir conteúdo com espaço vazio como separador| **wc -m texto.txt &#124; cut -d" " -f7**

#### Gerar arquivos de log das saídas de um pipe com "Tee"

Função|Comando|
------|-------|
Salvar mensagem de erro em um arquivo| ** ls [Arq não existente] 2> error.log**
Gerar arquivo de log| **echo "1,2,3" &#124; tee log.txt &#124; wc**
Adicionar texto ao arquivo de log| **echo "1,2,3" &#124; tee -a log.txt &#124; wc**
Observação:| Por padrão o comando sem o "-a" rescreve arquivo original

#### Date

Comando|Saída|
------|-------|
**date**| Sáb 10 Set 2022 17:30:50 WEST
**date -u**| Sáb 10 Set 2022 16:30:53 UTC
**date +%d/%m/%y**| 10/09/22
**date +%d/%m/%Y**| 10/09/2022
**%A** | dia da semana (domingo, …, sábado).
**%B** | nome do mês (janeiro, …, dezembro).
**%H** | hora do dia (0 a 23).
**%M** | minuto (0 a 59).
**%S** | segundos (0 a 61).
**%T** | hora no formato hh:mm:ss.
**%Y** | ano.
**%a** | dia da semana abreviado (dom, …, sab).
**%b** | nome do mês abreviado (jan, …, dez).
**%c** | dia da semana, data e hora.
**%d** | dia do mês.
**%j** | dia ano (1 a 366).
**%m** | mês (1 a 12).
**%s** | número de segundos desde das zero horas de 01/01/1970.
**%w** | dia da semana, onde 0 = domingo, 1 = segunda, …, 6 = sábado.
**%x** | representação da data local.
**%y** | os dois últimos dígitos do ano.
**+**| específica a escrita de um formato
**%**| para informar um descritor de formato
**date +%d%%%m%%%Y**| 12%09%2022 *(usou % como separador)*
**date +%d%t%m%t%Y**| 12      09      2022 *(t = Tab como separador)*
**date +%d%n%m%n%Y**|12 *(n = quebra de linha como separador)*
-|09
-|2022

#### Exibir calendário com o "cal"

Função|Comando|
------|-------|
Exibir calendário do mês atual| **cal**
Exibir três meses de calendário, mês anterior, atual e posterior| **cal -3**
Exibir calendário do ano atual| **cal -y**
Exibir calendário de ano específico| **cal -y 2024**
Exibir calendário de mês específica| **cal -m 10**
Exibir manual do comando cal| **man cal**

#### Inverter sequência de caracteres com o "rev"
````````````
rev
fabricio araujo
ojuara oicirbaf
1,2,3,4,5
5,4,3,2,1
^C # ctrl-c para sair
````````````
Função|Comando|
------|-------|
Gerar texto dentro de um arquivo| **echo fabricio,37,faleite@gmail.com,123 >> usuario.txt**
Pegar o quarto (último) campo do formulário| **cat usuario.txt &#124; cut -d"," -f4** *(>>> 123)*

Entrada|Saída|
------|-------|
**cat usuario.txt**| fabricio,araujo,37,faleite@gmail.com,123

Comando para pegar o ultimo campo|Saída|
------|-------|
**cat usuario.txt &#124; rev &#124; cut -d"," -f1 &#124; rev**|>>> 123

#### Concatenar arquivos por colunas com o "paste"

Mostrar mais de um arquivo no shell, por linha com o **cat**:
```sh
$ cat usuario.txt usuario2.txt
fabricio,araujo,37,faleite@gmail.com,123
Bento,Perini,4,bento@gmail.com,456
```
Mostrar mais de um arquivo no shell, por coluna:
```sh
$ paste usuario.txt usuario2.txt
fabricio,araujo,37,faleite@gmail.com,123        Bento,Perini,4,bento@gmail.com,456
```
Mostrar mais de um arquivo no shell, por coluna com o **:** como separador:
```sh
$ paste usuario.txt usuario2.txt
fabricio,araujo,37,faleite@gmail.com,123:Bento,Perini,4,bento@gmail.com,456
```
Mostrar mais de um arquivo no shell, por linha com o **paste**:
```sh
$ paste -d"\n" usuario.txt usuario2.txt
fabricio,araujo,37,faleite@gmail.com,123
Bento,Perini,4,bento@gmail.com,456
```
Concatenar mais de um arquivo em um novo arquivo:
```sh
$ paste -d"\n" usuario.txt usuario2.txt >> cadastro.txt
$ cat cadastro.txt
fabricio,araujo,37,faleite@gmail.com,123
Bento,Perini,4,bento@gmail.com,456
```

#### Oganizar lista em ordem alfabética e numérica com o "sort"

Mostra no shell uma lista de strings:
```sh
$ echo -e "um\ndois\ntrês"
um
dois
três
```
Organizando a lista com o sort:
```sh
$ echo -e "um\ndois\ntrês" | sort
dois
três
um
```
Cria arquivo com a lista de strings:
```sh
 ~ echo -e "um\ndois\ntrês" > numeros.txt
 ~ cat numeros.txt
um
dois
três
```
Organizando a lista do arquivo com o sort:
```sh
~ sort numeros.txt
dois
três
um
```
Incluir uma linha ao final do arquivo:
```sh
~ echo "um" >> numeros.txt
~ cat numeros.txt
um
dois
três
um
```
Organizando a lista do arquivo com o sort:
```sh
~ sort numeros.txt
dois
três
um
um
```
Usando sort com -u (unique) organiza e elimina itens repetidos:
```sh
~ sort -u numeros.txt
dois
três
um
```

#### Oganizar lista por coluna e na ordem inversa o "sort"

Pegar a lista de um arquivo, ordenar e salvar em um novo arquivo:
```sh
$ sort numeros.txt -o novo.txt
$ cat novo.txt
dois
três
um
um
```

Criar um novo arquivo com dados e juntar dois arquivos formando duas colunas:
```sh
$ echo -e "2\n1\n4\n3" >> numeros2.txt
$ paste numeros.txt numeros2.txt
um      2
dois    1
três    4
um      3
```

Juntar dois arquivos em dua colunas e salva os dados em um novo arquivo:
```sh
$ paste numeros.txt numeros2.txt >> arquivo.txt
$ cat arquivo.txt
um      2
dois    1
três    4
um      3
```

Ordenar o arquivo pela segunda coluna:
```sh
$ sort -k2 arquivo.txt
dois    1
um      2
um      3
três    4
```

Ordenar lista do arquivo de forma inversa com o reverse (-r):
```sh
$ sort -r arquivo.txt
um      3
um      2
três    4
dois    1
```

Ordenar lista do arquivo de forma inversa pela segunda coluna:
```sh
$ sort -r arquivo.txt -k2
três    4
um      3
um      2
dois    1
```

Ordenar lista de forma numérica em um arquivo:
```sh
$ sort -t"-" -k3 -n arquivo.txt
```
Comando|Função|
------|-------|
sort| ordernar listas
-t"-"| separador (neste caso o "-" é o parâmetro)
-k3 | aplica-se a funçao na terceira coluna
-n| ordena de forma númerica
arquivo.txt| nome do arquivo a qual será aplicado o comando

#### Executar comandos em loop sem usar laços, com o "xargs"
Criar vários diretórios:
```sh
$ echo "um dois tres" | xargs mkdir
```
Remover vários diretórios, mostrando o comando ao usuário:
```sh
$ echo "um dois tres" | xargs -t rm -r
rm -r um dois tres
```
Criar vários diretórios, um a um, e pedir confirmção y\n:
```sh
$ echo "um dois tres" | xargs -n 1 -p mkdir
mkdir um?...y
mkdir dois?...n
mkdir tres?...
```
Remover vários diretórios, um a um, e pedir confirmção y\n:
```sh
$ echo "um dois tres" | xargs -n 1 -p rm -r
rm -r um?...y
rm -r dois?...n
rm -r tres?...n
```
Criar vários arquivos, um a um, com o formato txt e pedir confirmção y\n:
```sh
$ echo -e "um\ndois\ntres" | xargs \
pipe> -I % -p bash -c 'touch %.txt'
bash -c touch um.txt?...y
bash -c touch dois.txt?...y
bash -c touch tres.txt?...n
```
Listar arquivos em uma coluna:
```sh
$ ls -1
dois.txt
texto.txt
um.txt
```
Remover arquivos com "ls" e pedido de confirmção y\n:
```sh
$ ls -1 | xargs \
pipe> -I % -p bash -c 'rm %'
bash -c rm dois.txt?...n
bash -c rm texto.txt?...y
bash -c rm um.txt?...y
```

#### Editor de fluxo de texto do terminal "sed" (screen editor)

Comando|Função|
------|-------|
ls *.txt| *Listar arquivos apenas no formato específico*
ls *[0-9].txt| *Listar arquivos no formato .txt e que contenha no nome números entre 0 e 9*
sed -n '1p' texto.txt| *Listar com o "sed" primeira linha do arquivo. '1p' -> 1 = linha, p = print*
sed -n '/galera/p' texto.txt| *Listar linhas que contenha a palavra "galera"*
sed -n '1,3p' texto.txt| *Listar as linhas de 1 a 3*
bsed -n '/e$/p' texto.txt| *Listar linhas que finalizam com a letra e. "$" representa o fim da linha*
sed -n '/^O/p' texto.txt| *Listar linhas que iniciam com a letra O. "^" representa o inicio da linha*
sed 's/Testo/Texto/' texto.txt| *Mostrar na tela arquivo com a substituição da palavra 'Testo' para 'Texto'*
sed -i -e 's/Testo/Texto/;s/qualque/qualquer/' texto.txt| *Alterar palavras no arquivo*
sed -i -e '3,5s/^/# /' texto.txt| *incluir comentário no inicio das linhas 3, 4 e 5*
sed -i -e '/galera/s/$/ Isso é um comentário/' texto.txt| *Inclui texto no fim da linha onde há a palavra galera*
sed -ie 's/BUG//' texto.txt| *Substituir uma palavra BUG de cada linha, por espaço vazio*
sed -ie 's/BUG//g' texto.txt| *Substituir todas as palavras BUG do texto, por espaço vazio*
sed -ie '/^\*/d' texto.txt| *Deletar todos os * a partir do inicio da linha*
sed '6d' texto.txt| *Mostrar no shell texto com a linha 6 deletada*
sed -ie '6d' texto.txt| *Deletar a linha 6 do texto*
sed '6d' texto.txt >> novo.txt| *Enviar dados do arq para novo arq, com a linha 6 deletada*
sed '/\.$/d' texto.txt| *Mostrar no shell aquivo com o . ao final da linha deletado*
sed -ie '/\.$/d' texto.txt| *Deletar . ao final da linha*

#### Pesquisar strings em arquivo de texto com o "grep"
**grep - Globally search a regular expression and print**

Comando|Função|
------|-------|
cat -n texto.txt| *Printar arquivo no shell com linhas enumeradas*
grep BUG texto.txt| *Printar linha onde contém a palavra BUG*
grep -n BUG texto.txt| *Printar número e linha onde contém a palavra BUG*
grep -v BUG texto.txt| *Printar arquivo no shell, eliminando a linha que contém a palavra BUG*
grep -c BUG texto.txt| *Printar números de linhas que contém a palavra BUG*
grep -o BUG texto.txt| *Printar todas as palavras BUG do arquivo*
grep -i bUg texto.txt| *Printar linha onde contém a palavra bug ignorando maiúsculas de minúsculas*
grep -B 2 galera texto.txt|*Printar linha que contém a palavra galera mais as duas linhas anterior*
grep -A 2 galera texto.txt|*Printar linha que contém a palavra galera mais as duas linhas posterior*
grep -C 2 galera texto.txt|*Printar linha com a palavra galera com duas linhas anterior e posterior*
grep -q galera texto.txt|*Informar se contém a palavra galera no arquivo*
echo $?| *Informa resultado do cmd anterior, se True retorna 0 se False retorna 1*

*Exemplo:*
```sh
grep -q galera texto.txt
echo $?
0
grep -q galerax texto.txt
echo $?
1
```


#### Tree: Lista hierárquica de diretórios em formato de árvore

Comando|Função|
------|-------|
brew install tree| *instalar o tree no terminal do mac*
tree| *Mostrar arquivos e diretórios em formato de árvore*
tree pasta| *Mostrar arquivos e diretórios de um diretório especifico*
tree pasta -o file.txt| *Salvar a árvore de arq e diretórios em um arquivo*


#### Criar links simbólicos e hardlinks no shell com "ln"

Tipos|Função
---|---
link simbólico| *Atalho com inode diferente, se quebrar arquivo, quebra o link*
hard link| *Atalho como o mesmo inode (id), se quebrar arquivo, não quebra o link*

Comando|Função|
------|-------|
touch arq.txt| *Criar um arquivo*
ls -i| *Mostar o id (inode) do arquivo*
rm *.txt| *Deleter todas os arquivos no formato .txt*
ln -s past1/past2/arq.txt linksimbolico|*Criar link simbólico*
file linksimbolico| *Mostrar o tipo de arquivo*
ll ou ls -l| *Mostra info do arquivo como permissões, tamanho, local e data*
ln pasta1/pasta2/arquivos/arq.txt hardlink| *Criar hard link*


**Exemplo de uso de links**
```sh
echo "echo 'Versão 1.0'" >> lib1.0.sh # Criar script sh
chmod +x lib1.0.sh # Dar permissão de uso do script
./lib1.0.sh # Acessar script
Versão 1.0
```
```sh
echo "echo ./lib/link_lib" >> main.sh # script que acessa link
chmod +x main.sh
ln -s lib/lib1.0.sh link_lib # criar link
ln -s -f lib/lib2.0.sh link_lib # Força mudança da path do link
./main.sh
Versão 2.0
```

#### env, expert e more
Comando|Função|
------|-------|
env| *Mostra o ambiente de desenvolvimento do Shell. Mostra os parâmetros de configuração.*
export [\$sua_variavel]| *Exporta para os parâmetros de configuração do Shell a criação da sua variável com chave e valor.*
more [file.txt]| *Alternativa ao "cat", com o more você consegue navegar pela pagina e pesquisar no arquivo.*

#### find
Comando|Função|
------|-------|
find .|*Encontra todos os arquivos em arvores na pasta atual.*
find . -name [file.txt]| *Busca pelo respectivo  arquivo na pasta atual.*
find . -maxdepth [n]| *Mostra todos os arquivos em grau de diretório passados no parâmetro [n], onde representa 0 como primeiro diretório, 1 segundo dir. e assim por diante.*

#### Uso do "*" e "?"

Comando|Função|
------|-------|
echo *.txt| *Mostra todos os arquivos no formato **.txt***
echo t*.txt| *Mostra todos os arquivos que iniciam com **t** e terminam com **.txt***
echo t???.txt| *iniciam **t** mais quaisquer três letras a seguir e termina em **.txt***

