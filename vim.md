# V I M

Guia prático para edição
de arquivos no Vim.
___

##### MOVIMENTAÇÃO

MOVER CURSORES COM A LETRAS:
**hjkl**
- *h(esquerda) j(para baixo)
k(para cima) l (direita)*
___

##### MODO INSERÇÃO DE TEXTO

INSERÇÃO ATRÁS DO CURSOR: **i**

INSERÇÃO A FRENTE DO CURSOR: **a**

INSERÇÃO NO INICIO DA LINHA: **I**

INSERÇÃO AO FINAL DA LINHA: **A**

INSERÇÃO NA PROXIMA LINHA: **o**

INSERÇÃO NA LINHA DE CIMA: **O**

APAGA A LINHA E ENTRA EM
MODO INSERÇAO: **S**
___

##### COPIAR / SUBSTITUIR / APAGAR

COPIAR LINHA: **yy**

COPIAR 3 LINHAS: **y3y / 3yy**

COPIAR PALAVRA: **yw**

COPIAR 3 PALAVRAS: **3yw**

SUBSTITUIR PALAVRA EM TODO
O ARQUIVO:
**:%s/(palavra antiga/palavra nova)g**

SUBSTITUIR UMA PALAVRA POR LINHA
EM TODO O ARQUIVO:
**:%s/(palavra antiga/palavra nova)**

SUBSTITUIR UMA PALAVRA:
**:(numero da linha)s/
(palavra antiga/palavra nova)**

COLAR LINHA ABAIXO: **p**

COLAR LINHA ACIMA: **P**

APAGAR/RECORTAR LINHA: **dd**

APAGAR/RECORTAR 3 LINHAS: **3dd**

APAGAR UM CARACTERE: **x / X**

ALTERAR DO CURSOR ATÉ O FINAL DA
LINHA: **c-$**

ALTERAR DO CURSOR ATÉ O INICIO
DA LINHA: **c-0**

ALTERAR A LINHA INTEIRA: **C**

ALTERAR PALAVRA: **c-e / c-w**
___

##### MODO VISUAL

ENTRAR EM MODO VISUAL: **v**

SELECIONAR TEXTO POR CARACTERE:
**v + Mover cursor**

SELECIONAR TEXTO POR LINHA:
**Shift-v + Mover cursor**


SELECIONAR VERTICALMENTE (COLUNA):
**Control-v**
___

##### MANIPULAÇÃO DE ARQUIVO

MOVER ENTRE OS SALTOS:
**c-o / c-i**

MOSTRAR NOME DO ARQUIVO E LOCAL
DO CURSOR: **control-g**

MOVER PARA TRAZER POR PALAVRAS:
**b**

IR PARA O INICIO DO ARQUIVO:
**gg**

IR PARA O FINAL DO ARQUIVO:
**shift-g**

IR PARA LINHA (X): **10-shift-g**

APAGAR UM CARACTERE: **x**

APAGAR VARIOS CARACTERES EX..:
**3x** APAGA 3 CARACTERES

SALVAR ARQUIVO: **:w**

SALVAR E SAIR DO ARQUIVO:
**:wq / :x / ZZ / shift-zz**

SAIR DO ARQUIVO: **:q** / **tt**

SAIR SEM SALVAR: **:q!**

SAIR DE TODOS OS ARQUIVOS: **:qa**

SALVAR ARQUIVO COM OUTRO NOME:
**:w (nomedoarquivo)**

ABRIR ARQUIVO DO MESMO DIRETÓRIO:
**:e (nomedoarquivo)**

RETORNAR ARQUIVO AO ESTADO ORIGINAL:
**:e!** (Sem salvar as alterações)

TRAZER CONTEUDO DE UM ARQUIVO
PARA O ARQUIVO ATUAL:
**:r (/endereço/do/arquivo)**

ESCREVER DADOS DE COMANDO DO SHELL
DENTRO DO ARQUIVO ATUAL: **:r! ()**
(comando, exc. **:r! ls**)
___

##### FOLDMETHOD

- CRIAR FOLD: **zf**

- ABRIR FOLD CRIADO: **zo**

- FECHAR FOLD CRIADO: **zc**

- APAGAR ÚLTIMO FOLD: **zd**

- CRIAR FOLD DENTRO DE UM BLOCO DE
CHAVES: **zfa-shift-{**

- CRIAR FOLD NO INTERVALO DE LINHAS:
**:10,25fold / :10,25fo**

- CRIAR FOLD COM **J** E **K**:
**zf5j** (fold com 5 linhas a frente)
**zf5k** (fold com 5 linhas a trás)

- MOVIMENTAR ENTRE FOLDS:
**z-j** (vai para o próximo fold)
**z-k** (vai para fold a cima)

- ABRIR E FECHAR TODOS OS FOLDS:
**zn** (abre todos os folds)
**z-shift-n** (volta todos os folds ao estado natural)
**:% foldclose** (fecha todos os folds)
**:% foldopen** (abre todos os folds)

- DELETAR TODOS OS FOLDS:
**z-Shift-e** (apaga todos os folds definitivo)

* SALVAR FOLDS: **:mkview**
* TRAZER FOLDS: **loadview**
___

___

##### IDENTAÇÃO

CRIAR IDENTAÇÃO: **shift->>**

DESFAZER IDENTAÇÃO: **shift-<<**

CRIAR IDENTAÇÃO EM VARIAS LINHAS:
ex. 3 linhas: **3-shift->>**

DESFAZER IDENTAÇÃO EM VARIAS LINHAS:
ex. 3 linhas: **3-shift-<<**

CRIAR IDENTAÇÃO ENTRE CHAVES:
**shift-> i shift }**
**shift-< i shift {**
___

##### MOVIMENTAÇÃO DE TELA

MOVER MEIA TELA: **crtl-d**

MOVER VOLTAR MEIA TELA: **crtl-u**

IR PARA O FIM DA TELA: **shift-l**

IR PARA O MEIO DA TELA: **shift-m**

IR PARA O TOPO DA TELA: **shift-h**

MOVER UMA TELA A FRENTE: **crtl-f**

MOVER UMA TELA A TRÁS: **crtl-b**

MOVER UMA LINHA A BAIXO: **crtl-e**

MOVER UMA LINHA A CIMA: **crtl-y**

MOVIMENTAÇÃO ENTRE CHAVES (), [] E {}: **shift-%**
___

##### MOVIMENTAÇÃO NA LINHA COM FIND E TIL

MOVER PARA FRENTE E PELA LINHA
USANDO UM CARACTERE:
**f-,** (, = ex. de caractere)

MOVER PARA TRÁS E PELA LINHA
USANDO UM CARACTERE:
**Shift-f-,** (, = ex. de caractere)

MOVER PARA FRENTE E PELA LINHA USANDO
UM CARACTERE ANTES DO CARACTERE:
**t-,** (, = ex. de caractere)

MOVER PARA TRÁS E PELA LINHA USANDO
UM CARACTERE ANTES DO CARACTERE:
**t-,** (, = ex. de caractere)
por este texto, substitua este texto, no texto"
___
##### COMANDOS

REPETIR ULTIMO COMANDO: **.**

REPETIR A DIGITAÇÃO DE PALAVRAS NO
MODO INSERÇAO: **.**
(Insere a ultima digita)

MUDAR LETRA PARA MAIÚSCULAS OU
MINUSCULAS: **~**
___

##### COMANDOS TERMINAL

ABRIR ARQUIVO FORA DO VIM: **:w | !open %**

CHAMADA DE COMANDOS NO TERMINAL: **tc**
(:!)
___

##### SPLITS

CRIAR SPLIT NA HORIZONTAL: **th**
(:split)

CRIAR SPLIT NA VERTICAL: **tv**
(:vsplit)
___

##### BUFFERS

IR PARA O PROXIMA BUFFER:
**ty** (:bn)

IR PARA O BUFFER ANTERIOR:
**tr** (:bp)

LISTAR BUFFERS ABERTOS: **:ls**

ALTERNAR ENTRE BUFFERS: **ctrl-6**

ACESSAR BUFFER PELO SEU RESPECTIVO
NÚMERO: **:b1**
(1 = ex. de numero de buffer)

DELETAR BUFFER: **td** (:bd)

DELETAR BUFFER PELO SEU
RESPECTIVO NÚMERO: **:bd2**
(2 = ex. de numero de buffer)

DELETAR BUFFER ATUAL SEM SALVAR
ALTERAÇÕES: **:bd!**
___

##### GERENCIAR TABS

CRIAR NOVA TAB: **te**
(:tabe<CR>)

ABRIR ARQUIVOS EM VARIAS TABS
NO TERMINAL: **vim -p (+nome arquivos)**

LISTAR TABS: **:tabs**

APAGAR TODAS AS TABS DEIXANDO AATUAL ABERTA: **:tabonly**

ABRIR TODOS OS BUFFERS EM TABS:
**:tab ball**

MOVER TABS: **:tabm 0**
(m = moverm, 0 = posição)

MOVER TAB UMA POSIÇÃO A FRENTE: **:tabm +1**

MOVER TAB UMA POSIÇÃO A TRÁS: **:tabm -1**

IR PARA A PROXIMA TAB:
**:tabn**

IR PARA A TAB ANTERIOR:
**:tabp**
___

##### ROADMAP

GERAR VISUALIZADOR EM REALTIME:
**:CocCommand markmap.watch**

CRIAR ARQUIVO ROADMAP:
**:CocCommand markmap.create**
___

##### VISUALIZADOR MARKDOWN

VISUALIZAR MARKDOWN: **:MarkdownPreview**

VISUALIZAR EM REALTIME: **:MarkdownPreviewToggle**

PARAR VISUALIZAÇÃO: **:MarkdownPreviewStop**
___

##### COMANDOS REMAPEADOS COM 'o'

CRIAR UMA LINHA ABAIXO, MANTENDO
O CURSOR A CIMA: **op** (o<Esc>k)

CRIAR UMA LINHA A CIMA, MANTENDO
O CURSOR ABAIXO: **oi** (o<Esc>j)

CRIA UMA LINHA ABAIXO E ENTRA EM
MODO INSERT: **oo** (A<CR>)
___

##### MARCAÇÕES COM O MARKS

CRIAR MARCAÇÃO: **ma**
(m = mark)
(a = nome marcação, pode ser uma letra qualquer)

VISUALIZAR MARCAÇÕES: **:marks**

IR PARA DETERMINADA MARCAÇÃO: **'a**
(a =  nome da marcação)

APAGAR MARCAÇÃO: **delmarks a**
(a =  nome da marcação)

APAGAR TODAS AS MARCAÇÕES: **delmarks!**
(a =  nome da marcação)

IR PARA ARQUIVO ATRAVÉS DE SEU NÚMERO NO MARKS:
**'3** / **`3** (3 = número mark do arquivo)
___

##### MOVIMENTAR PELAS ALTERAÇÕES

IR ATÉ A ÚLTIMA ALTERAÇÃO: **`.**

IR PARA A LINHA DA ÚLTIMA ALTERAÇÃO: **'.**

VOLTA PARA A ÚLTIMA ALTERAÇÃO: **''**
(Jumpback)

IR PARA A ULTIMA SELEÇÃO VISUAL: **`<** / **`>**

IR PARA A ULTIMA COPIA: **`[** / **`]**

IR PARA O ÚLTIMO LOCAL DE MODO
DE INSERÇÃO: **'^**

___

  1. APAGAR DO CURSOR ATÉ A PRÓXIMA PALAVRA, digite:   dw

  2. APAGAR DO CURSOR ATÉ O FIM DE UMA LINHA, digite:  d$

  3. APAGAR UMA LINHA INTEIRA, digite:   dd

  4. REPETIR UM MOVIMENTO, adicione antes um número:   2w

  5. O formato para um comando no modo Normal é:
           operador   [número]   movimento
   onde:
      operador  - é o que será feito, como  d  para apagar
      [número]  - quantas vezes o comando será repetido
      movimento - movimento sobre o texto que receberá a operação, como
                  w (palavra), $ (até o fim da linha), etc.


  7. DESFAZER UMA AÇÃO ANTERIOR, digite:                  u (minúsculo)
     DESFAZER TODAS AS ALTERAÇÕES EM UMA LINHA, digite:   U (maiúsculo)
     DESFAZER O QUE FOI DESFEITO, digite:                 CTRL-R

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  1. REINSERIR UM TEXTO QUE JÁ FOI APAGADO, digite  p . Isso coloca o texto
     deletado APÓS o cursor (se uma linha é deletada ela será inserida na linha
     abaixo do cursor).

  2. SUBSTITUIR O CARACTERE SOB O CURSOR, digite  r  e então o caractere
     que substituirá o original.

  3. COMANDO CHANGE: possibilita mudar do cursor até onde o movimento for.
     Ex: Digite  ce  para mudar do cursor até o fim de uma palavra, c$ para
     mudar até o fim da linha.

  4. O FORMATO PARA UMA OPERAÇÃO CHANGE É:

         c   [número]   movimento

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
                       Lição 4.2: O COMANDO BUSCAR

      ** Digite  /  seguido por uma frase para procurar por ela. **

  1. No modo Normal digite o caractere  / . Note que ele e o cursor aparecem
     no rodapé da tela, como ocorre com o comando  : .

  2. Agora digite 'errroo' <ENTER>. Esta é a palavra que quer procurar.

  3. Para buscar a mesma palavra de novo, simplesmente tecle  n .
     Para buscar a mesma palavra na direção oposta, tecle  N .

  4. Se quer procurar por uma frase de trás para frente, use  ?  em vez de  /  .

  5. Para voltar aonde estava, pressione CTRL-O (mantenha a tecla Ctrl
     pressionada e pressione a tecla o). Repita para voltar a outras posições.
     CTRL-I segue para posições mais recentes.

--->  "errroo" não é uma maneira de escrever erro;  errroo é um erro.

NOTA: Quando a busca atinge o fim do arquivo ela continuará do começo, a
      menos que a opção 'wrapscan' esteja desativada.

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
	        Lição 4.3: BUSCA DE PARÊNTESES CORRESPONDENTES

         ** Digite  %  para encontrar um ),], ou } correspondente. **


  1. Posicione o cursor em qualquer (, [, ou { na linha abaixo marcada com --->.

  2. Agora digite o caractere  % .

  3. O cursor deve estar no parêntese ou colchete que casa com o primeiro.

  4. Digite  %  para mover o cursor de volta ao primeiro colchete ou parêntese
     (por casamento).

---> Isto ( é uma linha de teste contendo (, [ ] e { }. ))

Nota: Isso é muito útil para corrigir um programa com parêntese não-casado!





~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
		       Lição 4.4: O COMANDO SUBSTITUIR

      ** Digite  :s/velho/novo/g  para substituir 'velho' por 'novo'. **


  1. Mova o cursor para a linha abaixo marcada com --->.

  2. Digite  :s/aa/a <ENTER> . Note que este comando somente muda a
     primeira ocorrência na linha.

  3. Agora digite  :s/aa/a/g   significando substituir globalmente na linha.
     Isto muda todas as ocorrências na linha.

---> aa melhor época para ver aas flores é aa primavera.

  4. Para mudar toda ocorrência de uma string entre duas linhas,
     digite  :#,#s/velho/novo/g   onde #,# são os números das duas linhas.
     Digite  :%s/velho/novo/g     para mudar todas as ocorrências no arquivo
                                  inteiro.
     Digite  :%s/velho/novo/gc    para mudar todas as ocorrências no arquivo
                                  inteiro, com a opção de confirmar cada
				  substituição.

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
                              RESUMO DA LIÇÃO 4


  1.    CTRL-G  mostra em que ponto do arquivo está e o estado dele.
             G  move para o fim do arquivo.
     número  G  move para a linha com esse número.
            gg  move para a primeira linha.

  2. Digitando  /  seguido por uma expressão procura À FRENTE por ela.
     Digitando  ?  seguido por uma expressão procura pela expressão de TRÁS
     PARA FRENTE.
     Após uma busca, digite n para achar a próxima ocorrência na mesma direção
     ou N para procurar na direção oposta.
     CTRL-O leva a posições antigas e CTRL-I a posições mais recentes.

  3. Digitando  %  enquanto o cursor está sobre um (,),[,],{, ou } localiza
     o par que casa com ele.

  4. Para substituir:
       o primeiro 'velho' de uma linha por 'novo' digite   :s/velho/novo
       todos os 'velho' em uma linha por 'novo' digite     :s/velho/novo/g
       expressões entre dois números (#) de linhas digite  :#,#s/velho/novo
       todas as ocorrências no arquivo digite              :%s/velho/novo/g
     Para confirmar cada substituição adicione 'c'         :%s/velho/novo/gc

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
		 Lição 5.1: COMO EXECUTAR UM COMANDO EXTERNO


       ** Digite  :!  seguido por um comando externo para executá-lo. **

  1. Digite o familiar comando  :  para levar o cursor ao rodapé da tela. Isso
     o permite entrar um comando.

  2. Agora digite o caractere  !  (ponto de exclamação). Isso o permite
     executar qualquer comando do shell.

  3. Como um exemplo digite  ls  seguindo o  !  e então tecle <ENTER>. Isto
     mostrará uma listagem do seu diretório, como se você estivesse no
     prompt do shell. Ou use  :!dir se ls não funcionar.

NOTA:  É possível executar qualquer comando externo dessa maneira, inclusive
       com argumentos.

NOTA:  Todos os comandos  :  devem ser finalizados teclando-se <ENTER>
       Daqui em diante não mencionaremos isso todas as vezes.


~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
		    Lição 5.2: MAIS SOBRE SALVAR ARQUIVOS

     ** Para salvar as alterações no texto, digite  :w NOMEDOARQUIVO. **


  1. Digite  :!dir  ou  :!ls para ter uma listagem de seu diretório.
     Você já deve saber que precisa teclar <ENTER> depois disso.

  2. Escolha um nome de arquivo que ainda não exista, como TESTE.

  3. Agora digite:   :w TESTE  (onde TESTE é o nome que você escolheu.)

  4. Isto salva o arquivo inteiro  (o Vim Tutor) com o nome TESTE.
     Para verificar isso, digite  :!ls de novo para ver seu diretório.

NOTA: Se sair do Vim e entrar de novo com o nome do arquivo TESTE,
      o arquivo deve ser uma cópia exata do tutorial quando você o salvou.

  5. Agora remova o arquivo digitando (MS-DOS):     :!del TESTE
                                   ou (Unix):       :!rm TESTE


~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
		 Lição 5.3: SELECIONAR O TEXTO A SER SALVO

  ** Para salvar parte de um arquivo, digite  v  movimento  :w NOMEDOARQUIVO **

  1. Mova o cursor para esta linha.

  2. Pressione  v  e mova o cursor para o quinto item abaixo. Note que o texto
     é realçado.

  3. Pressione o caractere  :  e note que aparecerá  :'<,'>  no lado inferior
     da tela.

  4. Digite  w TESTE , sendo TESTE um nome de arquivo que não existe ainda.
     Certifique-se de ver  :'<,'>w TESTE  antes de pressionar <ENTER>.

  5. O Vim salvará as linhas selecionadas no arquivo TESTE. Use  :!dir  ou
     !:ls para vê-lo. Não o apague ainda! Nós o usaremos na próxima lição.

NOTA:  Pressionar  v  inicia o modo Visual de seleção.  Você pode mover o
cursor pela tela para tornar a seleção maior ou menor. Pode, então, usar um
operador para executar alguma ação. Por exemplo,  d  apaga o texto.

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
		  Lição 5.4: RECUPERAR E UNIR ARQUIVOS

    ** Para inserir o conteúdo de um arquivo, digite  :r NOMEDOARQUIVO **


  1. Posicione o cursor logo acima desta linha.

NOTA:  Depois de executar o Passo 2 você verá a Lição 5.3. Então DESÇA o
       cursor para ver esta lição novamente.

  2. Agora recupere o arquivo TESTE usando o comando  :r TESTE  onde TESTE é o
     nome do arquivo.
     O arquivo recuperado é colocado abaixo da linha atual do cursor.

  3. Para verificar que o arquivo foi recuperado, volte com o cursor e verifique
     que agora existem duas cópias da Lição 5.3, a original e a versão do
     arquivo.

NOTA: Você também pode ler a saída de um comando externo. Por exemplo,  :r !ls
      lê a saída do comando ls e coloca o resultado abaixo do cursor.


~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
			      RESUMO DA LIÇÃO 5


  1.  :!comando  executa um comando externo.

      Alguns exemplos úteis são:
         (MS-DOS)         (UNIX)
	  :!dir            :!ls          -  lista conteúdo do diretório.
          :!del ARQUIVO    :!rm ARQUIVO  -  remove ARQUIVO.

  2. :w ARQUIVO  salva o atual arquivo do Vim para o disco com o nome ARQUIVO.

  3. v  movimento  :w ARQUIVO  salva as linhas Visualmente selecionadas em
     ARQUIVO.

  4. :r ARQUIVO  recupera ARQUIVO do disco e o insere dentro do arquivo atual
     na posição do cursor.

  5. :r !dir  lê a saída do comando dir e coloca o resultado abaixo da posição
     atual do cursor.


~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
                        Lição 6.1: O COMANDO ABRIR

   ** Digite  o  para abrir uma linha em baixo do cursor e ir para o modo de
      Inserção. **

  1. Mova o cursor para a linha abaixo marcada com --->.

  2. Digite  o  (minúsculo) para abrir uma linha ABAIXO do cursor e ir para o
     modo de Inserção.

  3. Agora digite algum texto e pressione <ESC> para sair do modo de
     Inserção.

---> Após teclar  o  o cursor é colocado na linha aberta no modo de Inserção.

  4. Para abrir uma linha ACIMA do cursor, simplesmente tecle um  O  maiúsculo,
     em vez de um  o  minúsculo. Tente isso na linha abaixo.

---> Abra uma linha acima desta teclando O enquanto o cursor está nesta linha.



~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
       	               Lição 6.2: O COMANDO ADICIONAR

	    ** Digite  a  para inserir texto DEPOIS do cursor. **

  1. Mova o cursor para o início da linha marcada com ---> .

  2. Pressione  e  até o cursor ficar sobre o final de li .

  3. Digite um  a  (minúsculo) para adicionar texto DEPOIS do caractere sob o
     cursor.

  4. Complete a palavra conforme a linha abaixo. Pressione <ESC> para sair do
     modo de Inserção.

  5. Use  e  para mover para a próxima palavra incompleta  repita os passos 3
     e 4.

---> Esta lin o permite pratic a adiç de texto a uma linha.
---> Esta linha o permite praticar a adição de texto a uma linha.

NOTA: a, i e A levam ao mesmo modo de Inserção, a única diferença é onde os
      caracteres são inseridos.
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
	         Lição 6.3: UMA OUTRA VERSÃO DO SUBSTITUIR

      ** Digite um R maiúsculo para substituir mais de um caractere. **


  1. Mova o cursor para a primeira linha abaixo marcada com --->. Mova o
     cursor para o início do primeiro  xxx .

  2. Agora pressione  R  e digite os números que estão abaixo dele, na segunda
     linha, para substituir o  xxx .

  3. Pressione <ESC> para sair do modo de Substituição. Note que o resto da
     linha permanece inalterado.

  4. Repita os passos para substituir os  xxx  restantes.

--->  Adicionando 123 a xxx resulta em xxx.
--->  Adicionando 123 a 456 resulta em 579.

NOTA:  O modo de Substituição é como o modo de Inserção, mas cada caractere
       digitado apaga um caractere existente.

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
		       Lição 6.4: COPIAR E COLAR TEXTO

	** Use o operador  y  para copiar texto e  p  para colá-lo. **

   1. Vá à linha marcada com ---> abaixo e posicione o cursor após "a)".

   2. Inicie o modo Visual com  v  e mova o cursor para logo antes de
      "primeiro".

   3. Digite  y  para copiar o texto selecionado.

   4. Mova o cursor para o fim da próxima linha:  j$

   5. Digite  p  para colar o texto. Então, digite:  o segundo <ESC> .

   6. Use o modo Visual para selecionar  " item.", copie-o com  y , mova para
      o fim da próxima linha com  j$  e cole o texto com  p .

--->  a) esse é o primeiro item.
      b)

NOTA:  Você também pode usar  y  como um operador; por exemplo, yw copia uma
       palavra.

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
		      Lição 6.5: CONFIGURAR PREFERÊNCIAS

      ** Configure uma preferência de modo que uma busca ou substituição
	 ignore se as letras são maiúsculas ou minúsculas. **

  1. Procure por 'ignore' entrando:   /ignore <ENTER>
     Repita várias vezes teclando  n .

  2. Configure a opção 'ic' (Ignore case) digitando:  :set ic

  3. Agora procure por 'ignore' de novo teclando: n
     Repita várias vezes.

  4. Configure as opções 'hlsearch' e 'incsearch':  :set hls is

  5. Agora entre com o comando buscar de novo, e veja o que acontece:
     /ignore

  6. Para desabilitar a diferenciação entre maiúsculas e minúsculas:
     :set noic

NOTA:  Para remover o realce dos termos localizados entre:  :nohlsearch
NOTA:  Se quiser ignorar a diferença entre maiúsculas e minúsculas em apenas
       uma pesquisa, use  \c  no comando:  /ignore\c <ENTER>

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
			      RESUMO DA LIÇÃO 6

  1. Digite  o  para abrir uma linha ABAIXO do cursor e iniciar o modo de
     Inserção.
     Digite  O  para abrir uma linha ACIMA da linha onde o cursor está.

  2. Digite  a  para adicionar texto DEPOIS do caractere onde está o cursor.
     Digite  A  para adicionar texto ao fim da linha.

  3. O comando  e  move o cursor para o fim de uma palavra.

  4. O operador  y  copia texto,  p  cola o texto copiado.

  5. Digitando  R  entra-se no modo de Substituição até que <ESC> seja
     pressionado.

  6. Digitando  ":set xxx" modifica-se a opção "xxx". Algumas opções são:
         'ic'  'ignorecase'    ignora diferença entre maiúsculas/minúsculas
	 'is'  'incsearch'     realiza a busca enquanto se digita
	 'hls' 'hlsearch'      realça todos os trechos localizados
     Você tanto pode usar o nome curto quanto o nome longo da opção.

  7. Adicione o prefixo "no" para desabilitar uma opção:  :set noic


~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
			   LIÇÃO 7.1: OBTENDO AJUDA

		 ** Use o sistema de ajuda do próprio Vim **

  O Vim possui sistema de ajuda abrangente. Para começar, tente algum
  desses três:
        - pressione a tecla <HELP> (se você tiver uma)
        - pressione a tecla <F1>   (se você tiver uma)
        - digite      :help <ENTER>

  Leia o texto da ajuda para aprender como o sistema de ajuda funciona.
  Digite  CTRL-W CTRL-W  para pular de uma janela a outra.
  Digite  :q <ENTER>     para fechar a janela da ajuda.

  Você pode encontrar ajuda sobre qualquer assunto, fornecendo um argumento
  para o comando ":help". Tente isto (não se esqueça de pressionar <ENTER>):

       :help w
       :help c_CTRL-D
       :help insert-index
       :help user-manual

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
		 Lição 7.2: CRIAR UM SCRIPT DE INICIALIZAÇÃO

		       ** Habilite recursos do Vim **

  O Vim tem muito mais recursos do que o Vi, mas na sua maioria eles são
  desabilitados por padrão.  Para usar mais recursos, você tem que criar um
  arquivo "vimrc".

  1. Comece a editar o arquivo "vimrc". Isso depende do sistema:
         :e ~/.vimrc           para Unix
         :e ~/_vimrc           para MS-Windows

  2. Agora, leia o conteúdo do arquivo "vimrc" de exemplo:
	 :r $VIMRUNTIME/vimrc_example.vim

  3. Salve o arquivo com:
         :w

  Da próxima vez que o Vim for iniciado, ele usará realce de sintaxe. Você
  pode adicionar suas configurações preferidas para esse arquivo "vimrc". Para
  maiores informações, digite:  :help vimrc-intro

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
			    Lição 7.3: COMPLETAÇÃO

	   ** Completação da linha de comando com CTRL-D e <TAB> **

   1. Certifique-se de que o Vim não está no modo compatível:  :set nocp

   2. Veja quais arquivos existem no diretório:  :!ls  ou  :!dir

   3. Digite o início de um comando:  :e

   4. Pressione  CTRL-D  e o Vim mostrará a lista dos comandos iniciados
      com "e".

   5. Pressione  <TAB>  e o Vim completará o nome do comando para ":edit".

   6. Agora, adicione um espaço e o início do nome de um arquivo existente:
      :edit ARQ

   7. Pressione <TAB>.  O Vim completará o nome (se ele for único).

NOTA:  A completação funciona com muitos comandos. Basta pressionar CTRL-D e
<TAB>. Isso é especialmente útil para  :help .

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
			      RESUMO DA LIÇÃO 7


  1. Digite  :help ou pressione <F1> ou <Help>  para abrir a janela de ajuda.

  2. Digite  :help cmd  para achar a ajuda sobre  cmd .

  3. Digite  CTRL-W CTRL-W  para pular de uma janela a outra.

  4. Digite  :q  para fechar a janela de ajuda.

  5. Crie um script de inicialização vimrc para ativar automaticamente as suas
     configurações preferidas.

  6. Quando pressionar um comando  : , pressione CTRL-D para ver as possibilidades
  de completação. Pressione <TAB> para usá-la.





~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

  Isto conclui o tutorial do Vim, uma breve apresentação do editor Vim,
  somente o bastante para que você possa usar o editor com facilidade.
  Ele está longe de ser completo, uma vez que o Vim possui muitos, muitos mais
  comandos. O próximo passo é ler o manual:  ":help user-manual".

  Livro recomendado em Português sobre o Vim:
       O editor de texto Vim - de Sérgio Luiz Araújo da Silva et al.
       http://code.google.com/p/vimbook/

  Para futura leitura e estudo, este livro é recomendado:
       Vim - Vi Improved - de Steve Oualline
       Editora: New Riders
  Este é o primeiro livro completamente dedicado ao Vim. Especialmente útil
  para iniciantes, com muitos exemplos e ilustrações.
  Veja https://iccf-holland.org/click5.html

  Esse livro é mais antigo e mais sobre o Vi do que sobre o Vim, mas também é
  recomendado:
       Learning the Vi Editor - de Linda Lamb
       Editora: O'Reilly & Associates Inc.
  Este é um bom livro para aprender quase tudo o que você quer fazer com o Vi.
  A sexta edição também inclui informações sobre o Vim.

  Este tutorial foi escrito por Michael C. Pierce e Robert K. Ware,
  Colorado School of Mines, usando idéias fornecidas por Charles Smith,
  Colorado State University.  E-mail: bware@mines.colorado.edu.

  Modificado para o Vim por Bram Moolenaar.

  Versão 1.4 traduzida para o português por Marcelo Drudi Miranda, Escola
  Politécnica da Universidade de São Paulo.

  Revisão e atualização da tradução para a versão 1.7 por Jakson Aquino,
  Universidade Federal do Ceará: E-mail: jalvesaq@gmail.com

  Nova revisão e atualização para a versão 1.8 por Roní Gonçalves,
  Universidade Federal de Uberlândia.

  Last Change: 2017 Feb 11

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
