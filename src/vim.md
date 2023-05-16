# V I M

Guia prático para edição
de arquivos no Vim.
___

##### MOVIMENTAÇÃO

MOVER CURSORES COM A LETRAS:
**hjkl**
- *h(esquerda) j(para baixo)
k(para cima) l (direita)*

MOVIMENTAR ENTRE (), [], {}: **%**
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

SUBSTITUIR PALAVRA EM TODO O ARQUIVO
COM A OPÇÃO DE CONFIRMAR CADA SUBSTITUIÇÃO:
**:%s/(palavra antiga/palavra nova)gc**

SUBSTITUIR PALAVRA ENTRE DUAS LINHAS: *:#,#s/velho/novo/g*
(# = numero da linha)

SUBSTITUIR UMA PALAVRA POR LINHA
EM TODO O ARQUIVO:
**:%s/(palavra antiga/palavra nova)**

SUBSTITUIR UMA PALAVRA:
**:(numero da linha)s/
(palavra antiga/palavra nova)**

SUBSTITUIR CARACTERE: **r**

SUBSTITUIR CARACTERES: **R**

COLAR LINHA ABAIXO: **p**

COLAR LINHA ACIMA: **P**

APAGAR/RECORTAR PALAVRA: **dw**

APAGAR/RECORTAR LINHA: **dd**

APAGAR/RECORTAR DO CURSOR ATÉ O FIM DA LINHA: **d$**

APAGAR/RECORTAR 3 LINHAS: **3dd**

APAGAR UM CARACTERE: **x / X**

ALTERAR DO CURSOR ATÉ O FINAL DA
LINHA: **c-$**

ALTERAR DO CURSOR ATÉ O INICIO
DA LINHA: **c-0**

ALTERAR A LINHA INTEIRA: **C**

ALTERAR PALAVRA: **c-e / c-w**

DESFAZER AÇÃO: **u**

DESFAZER ALTERAÇÕES DE TODA A LINHA: **U**
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

BUSCAR PALAVRA/FRASE: **/(palavra)**

CAMINHAR PELAS PALAVRAS DA BUSCA: **n**

CAMINHAR PELAS PALAVRAS DA BUSCA EM DIREÇÃO OPOSTA: **N**

VOLTAR ONDE ESTAVA: **ctrl-o**
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
