# V I M

***Guia prático para edição
de arquivos no Vim.***
___
### MOVIMENTAÇÃO
Descrição | Comando
----------|:------:
*Mover cursores com a letras* | **h j k l**
*Movimento* |**h (esquerda)**
*Movimento* |**j (para baixo)**
*Movimento* |**k (para cima)**
*Movimento* |**l (direita)**

Descrição | Comando
----------|:------:
*Movimentar entre:* **( ) [ ] { }** | **%**
___

### MODO INSERÇÃO DE TEXTO
Descrição | Comando
----------|:------:
*Inserção atrás do cursor* |  **i**
*Inserção a frente do cursor* | **a**
*Inserção no inicio da linha* | **I**
*Inserção ao final da linha* | **A**
*Inserção na proxima linha* | **o**
*Inserção na linha de cima* | **O**
*Apaga a linha e entra em modo inserçao* | **S**

### AUTO COMPLETAR PALAVRAS
Descrição | Comando
----------|:------:
*Auto completa palavras usadas no arquivo* | **Ctrl-x Ctrl-p**
___

### COPIAR / SUBSTITUIR / APAGAR
Descrição | Comando
----------|:------:
*Copiar linha* | **yy**
*Copiar 3 linhas* | **y3y / 3yy**
*Copiar palavra* | **yw**
*Copiar 3 palavras* | **3yw**
*Substituir palavra em todo o arquivo* | **:%s/(antiga/nova)g**
*Substituir palavra em todo o arquivo com a opção de confirmar cada substituição* | **%s/(antiga/nova)gc**
*Substituir palavra entre duas linhas* | **:#,#s/velho/novo/g** (# = num da linha)
*Substituir uma palavra por linha em todo o arquivo* | **:%s/(antiga/nova)**
*Substituir uma palavra* | **:(numero da linha)s/(antiga/nova)**
*Substituir caractere* | **r**
*Substituir caracteres* | **R**
*Colar linha abaixo* | **p**
*Colar linha acima* | **P**
*Apagar/recortar palavra* |  **dw**
*Apagar/recortar linha* | **dd**
*Apagar/recortar do cursor até o fim da linha* | **d$**
*Apagar/recortar 3 linhas* | **3dd**
*Apagar um caractere* | **x / X**
*Alterar do cursor até o final da linha* | **c-$**
*Alterar do cursor até o inicio da linha* | **c-0**
*Alterar a linha inteira* | **C**
*Alterar palavra* | **c-e / c-w**
*Desfazer ação* | **u**
*Desfazer alterações de toda a linha* | **U**
___

### MODO VISUAL
Descrição | Comando
----------|:------:
*Entrar em modo visual* | **v**
*Selecionar texto por caractere* |**v + Mover cursor**
*Selecionar texto por linha* |**Shift-v + Mover cursor**
*Selecionar verticalmente (coluna)* |**Control-v**
___

### MANIPULAÇÃO DE ARQUIVO
Descrição | Comando
----------|:------:
*Mover entre os saltos* |**c-o / c-i**
*Mostrar nome do arquivo e local do cursor* | **control-g**
*Mover para trazer por palavras* |**b**
*Ir para o inicio do arquivo* | **gg**
*Ir para o final do arquivo* | **shift-g**
*Ir para linha (x)* | **10-shift-g**
*Apagar um caractere* | **x**
*Apagar varios caracteres ex..* | **3x** apaga 3 caracteres
*Salvar arquivo* | **:w**
*Salvar e sair do arquivo* | **:wq / :x / ZZ / shift-zz**
*Sair do arquivo* | **:q** / **tt**
*Sair sem salvar* | **:q!**
*Sair de todos os arquivos* | **:qa**
*Salvar arquivo com outro nome* | **:w (nomedoarquivo)**
*Abrir arquivo do mesmo diretório* |**:e (nomedoarquivo)**
*Retornar arquivo ao estado original* | **:e!** (Sem salvar as alterações)
*Trazer conteudo de um arquivo para o arquivo atual* | **:r (/endereço/do/arquivo)**
*Escrever dados de comando do shell dentro do arquivo atual* | **:r! ()** (comando, exc. **:r! ls**)
___

### FOLDMETHOD
Descrição | Comando
----------|:------:
*Criar fold* | **zf**
*Abrir fold criado* | **zo**
*Fechar fold criado* | **zc**
*Apagar último fold* | **zd**
*Criar fold dentro de um bloco de chaves* | **zfa-shift-{**
*Criar fold no intervalo de linhas* |**:10,25fold / :10,25fo**
*Criar fold com J e K* | **zf5j** (fold com 5 linhas a frente)
*Criar fold com J e K* | **zf5k** (fold com 5 linhas a trás)
*Movimentar entre folds* |**z-j** (vai para o próximo fold)
*Movimentar entre folds* |**z-k** (vai para fold a cima)
*Deletar todos os folds* |**z-Shift-e** (apaga todos os folds definitivo)
*Salvar folds* | **:mkview**
*Trazer folds* | **loadview**

### ABRIR E FECHAR TODOS OS FOLDS:
Descrição | Comando
----------|:------:
*Abre todos os folds* | **zn** 
*Volta todos os folds ao estado natural* | **z-shift-n** 
*Fecha todos os folds* | **:% foldclose** 
*Abre todos os folds* | **:% foldopen** 
___

### IDENTAÇÃO
Descrição | Comando
----------|:------:
*Criar identação*| **shift->>**
*Desfazer identação*| **shift-<<**
*Criar identação em varias linhas ex. 3 linhas* | **3-shift->>**
*Desfazer identação em varias linhas ex. 3 linhas*| **3-shift-<<**
*Criar identação entre chaves* | **shift-> i shift } <-> shift-< i shift {**
___
 
### MOVIMENTAÇÃO DE TELA
Descrição | Comando
----------|:------:
*Mover meia tela*| **crtl-d**
*Mover voltar meia tela*| **crtl-u**
*Ir para o fim da tela*| **shift-l**
*Ir para o meio da tela*| **shift-m**
*Ir para o topo da tela* | **shift-h**
*Mover uma tela a frente* | **crtl-f**
*Mover uma tela a trás* |***crtl-b**
*Mover uma linha a baixo* | **crtl-e**
*Mover uma linha a cima* | **crtl-y**
*Movimentação entre chaves (), [] E {}* | **shift-%**
___

### MOVIMENTAÇÃO NA LINHA COM FIND E TIL
Descrição | Comando
----------|:------:
*Mover para frente e pela linha usando um caracterE*| **f-,** (, = ex. de caractere)
*Mover para trás e pela linha usando um caractere*| **Shift-f-,** (, = ex. de caractere)
*Mover para frente e pela linha usando um caractere antes do caractere*| **t-,** (, = ex. de caractere)
*Mover para trás e pela linha usando um caractere antes do caractere* | **t-,** (, = ex. de caractere) por este texto, substitua este texto, no texto"
___
### COMANDOS
Descrição | Comando
----------|:------:
*Repetir ultimo comando*| **.**
*Repetir a digitação de palavras no modo inserçao*| **.** (Insere a ultima digitação)
*Mudar letra para maiúsculas ou minusculas*| **~**
*Buscar palavra/frase*|**/(palavra)**
*Caminhar pelas palavras da busca*| **n**
*Caminhar pelas palavras da busca em direção oposta*| **N**
*Voltar onde estava*| **ctrl-o**
___

### COMANDOS TERMINAL
Descrição | Comando
----------|:------:
# V I M

***Guia prático para edição
de arquivos no Vim.***
___
### MOVIMENTAÇÃO
Descrição | Comando
----------|:------:
*Mover cursores com a letras* | **h j k l**
*Movimento* |**h (esquerda)**
*Movimento* |**j (para baixo)**
*Movimento* |**k (para cima)**
*Movimento* |**l (direita)**

Descrição | Comando
----------|:------:
*Movimentar entre:* **( ) [ ] { }** | **%**
___

### MODO INSERÇÃO DE TEXTO
Descrição | Comando
----------|:------:
*Inserção atrás do cursor* |  **i**
*Inserção a frente do cursor* | **a**
*Inserção no inicio da linha* | **I**
*Inserção ao final da linha* | **A**
*Inserção na proxima linha* | **o**
*Inserção na linha de cima* | **O**
*Apaga a linha e entra em modo inserçao* | **S**
___

### COPIAR / SUBSTITUIR / APAGAR
Descrição | Comando
----------|:------:
*Copiar linha* | **yy**
*Copiar 3 linhas* | **y3y / 3yy**
*Copiar palavra* | **yw**
*Copiar 3 palavras* | **3yw**
*Substituir palavra em todo o arquivo* | **:%s/(antiga/nova)g**
*Substituir palavra em todo o arquivo com a opção de confirmar cada substituição* | **%s/(antiga/nova)gc**
*Substituir palavra entre duas linhas* | **:#,#s/velho/novo/g** (# = num da linha)
*Substituir uma palavra por linha em todo o arquivo* | **:%s/(antiga/nova)**
*Substituir uma palavra* | **:(numero da linha)s/(antiga/nova)**
*Substituir caractere* | **r**
*Substituir caracteres* | **R**
*Colar linha abaixo* | **p**
*Colar linha acima* | **P**
*Apagar/recortar palavra* |  **dw**
*Apagar/recortar linha* | **dd**
*Apagar/recortar do cursor até o fim da linha* | **d$**
*Apagar/recortar 3 linhas* | **3dd**
*Apagar um caractere* | **x / X**
*Alterar do cursor até o final da linha* | **c-$**
*Alterar do cursor até o inicio da linha* | **c-0**
*Alterar a linha inteira* | **C**
*Alterar palavra* | **c-e / c-w**
*Desfazer ação* | **u**
*Desfazer alterações de toda a linha* | **U**
___

### MODO VISUAL
Descrição | Comando
----------|:------:
*Entrar em modo visual* | **v**
*Selecionar texto por caractere* |**v + Mover cursor**
*Selecionar texto por linha* |**Shift-v + Mover cursor**
*Selecionar verticalmente (coluna)* |**Control-v**
___

### MANIPULAÇÃO DE ARQUIVO
Descrição | Comando
----------|:------:
*Mover entre os saltos* |**c-o / c-i**
*Mostrar nome do arquivo e local do cursor* | **control-g**
*Mover para trazer por palavras* |**b**
*Ir para o inicio do arquivo* | **gg**
*Ir para o final do arquivo* | **shift-g**
*Ir para linha (x)* | **10-shift-g**
*Apagar um caractere* | **x**
*Apagar varios caracteres ex..* | **3x** apaga 3 caracteres
*Salvar arquivo* | **:w**
*Salvar e sair do arquivo* | **:wq / :x / ZZ / shift-zz**
*Sair do arquivo* | **:q** / **tt**
*Sair sem salvar* | **:q!**
*Sair de todos os arquivos* | **:qa**
*Salvar arquivo com outro nome* | **:w (nomedoarquivo)**
*Abrir arquivo do mesmo diretório* |**:e (nomedoarquivo)**
*Retornar arquivo ao estado original* | **:e!** (Sem salvar as alterações)
*Trazer conteudo de um arquivo para o arquivo atual* | **:r (/endereço/do/arquivo)**
*Escrever dados de comando do shell dentro do arquivo atual* | **:r! ()** (comando, exc. **:r! ls**)
___

### FOLDMETHOD
Descrição | Comando
----------|:------:
*Criar fold* | **zf**
*Abrir fold criado* | **zo**
*Fechar fold criado* | **zc**
*Apagar último fold* | **zd**
*Criar fold dentro de um bloco de chaves* | **zfa-shift-{**
*Criar fold no intervalo de linhas* |**:10,25fold / :10,25fo**
*Criar fold com J e K* | **zf5j** (fold com 5 linhas a frente)
*Criar fold com J e K* | **zf5k** (fold com 5 linhas a trás)
*Movimentar entre folds* |**z-j** (vai para o próximo fold)
*Movimentar entre folds* |**z-k** (vai para fold a cima)
*Deletar todos os folds* |**z-Shift-e** (apaga todos os folds definitivo)
*Salvar folds* | **:mkview**
*Trazer folds* | **loadview**

### ABRIR E FECHAR TODOS OS FOLDS:
Descrição | Comando
----------|:------:
*Abre todos os folds* | **zn** 
*Volta todos os folds ao estado natural* | **z-shift-n** 
*Fecha todos os folds* | **:% foldclose** 
*Abre todos os folds* | **:% foldopen** 
___

### IDENTAÇÃO
Descrição | Comando
----------|:------:
*Criar identação*| **shift->>**
*Desfazer identação*| **shift-<<**
*Criar identação em varias linhas ex. 3 linhas* | **3-shift->>**
*Desfazer identação em varias linhas ex. 3 linhas*| **3-shift-<<**
*Criar identação entre chaves* | **shift-> i shift } <-> shift-< i shift {**
___
 
### MOVIMENTAÇÃO DE TELA
Descrição | Comando
----------|:------:
*Mover meia tela*| **crtl-d**
*Mover voltar meia tela*| **crtl-u**
*Ir para o fim da tela*| **shift-l**
*Ir para o meio da tela*| **shift-m**
*Ir para o topo da tela* | **shift-h**
*Mover uma tela a frente* | **crtl-f**
*Mover uma tela a trás* |***crtl-b**
*Mover uma linha a baixo* | **crtl-e**
*Mover uma linha a cima* | **crtl-y**
*Movimentação entre chaves (), [] E {}* | **shift-%**
___

##### MOVIMENTAÇÃO NA LINHA COM FIND E TIL

Descrição | Comando
----------|:------:
*Mover para frente e pela linha usando um caracterE*| **f-,** (, = ex. de caractere)
*Mover para trás e pela linha usando um caractere*| **Shift-f-,** (, = ex. de caractere)
*Mover para frente e pela linha usando um caractere antes do caractere*| **t-,** (, = ex. de caractere)
*Mover para trás e pela linha usando um caractere antes do caractere* | **t-,** (, = ex. de caractere) por este texto, substitua este texto, no texto"
___
### COMANDOS
Descrição | Comando
----------|:------:
*Repetir ultimo comando*| **.**
*Repetir a digitação de palavras no modo inserçao*| **.** (Insere a ultima digitação)
*Mudar letra para maiúsculas ou minusculas*| **~**
*Buscar palavra/frase*|**/(palavra)**
*Caminhar pelas palavras da busca*| **n**
*Caminhar pelas palavras da busca em direção oposta*| **N**
*Voltar onde estava*| **ctrl-o**
___

### COMANDOS TERMINAL
Descrição | Comando
----------|:------:
*Abrir arquivo fora do vim*| **:w \| !open %**
*Chamada de comandos no terminal*| **tc** (:!)
___

### SPLITS
Descrição | Comando
----------|:------:
*Criar split na horizontal*| **th** (:split)
*Criar split na vertical*| **tv** (:vsplit)
___

### BUFFERS
Descrição | Comando
----------|:------:
*Ir para o proxima buffer*| **ty** (:bn)
*Ir para o buffer anterior*| **tr** (:bp)
*Listar buffers abertos*| **:ls**
*Alternar entre buffers* | **ctrl-6**
*Acessar buffer pelo seu respectivo número*| **:b1** (1 = ex. de numero de buffer)
*Deletar buffer*|  **td** (:bd)
*Deletar buffer pelo seu respectivo número*|  **:bd2** (2 = ex. de numero de buffer)
*Deletar buffer atual sem salvar alterações*|  **:bd!**
___

### GERENCIAR TABS
Descrição | Comando
----------|:------:
*Criar nova tab*| **te** (:tabe<\CR>)
*Abrir arquivos em varias tabs no terminal*| **vim -p (+nome arquivos)**
*Listar tabs*| **:tabs**
*Apagar todas as tabs deixando aatual aberta*| **:tabonly**
*Abrir todos os buffers em tabs*| **:tab ball**
*Mover tabs*| **:tabm 0** (m = moverm, 0 = posição)
*Mover tab uma posição a frente*| **:tabm +1**
*Mover tab uma posição a trás*| **:tabm -1**
*Ir para a proxima tab*| **:tabn**
*Ir para a tab anterior*| **:tabp**
___

### ROADMAP

Descrição | Comando
----------|:------:
*Gerar visualizador em realtime*| **:CocCommand markmap.watch**
*Criar arquivo roadmap*| **:CocCommand markmap.create**
___

### VISUALIZADOR MARKDOWN
Descrição | Comando
----------|:------:
*Visualizar markdown*|  **:MarkdownPreview**
*Visualizar em realtime*|  **:MarkdownPreviewToggle**
*Parar visualização*|  **:MarkdownPreviewStop**
___

## COMANDOS REMAPEADOS COM 'o'
Descrição | Comando
----------|:------:
*Criar uma linha abaixo, mantendo o cursor a cima*| **op** (o<\Esc>k)
*Criar uma linha a cima, mantendo o cursor abaixo* | **oi** (o<\Esc>j)
*Cria uma linha abaixo e entra em modo insert*| **oo** (A<\CR>)
___

### MARCAÇÕES COM O MARKS
Descrição | Comando
----------|:------:
*Criar marcação*|  **ma** (m = mark) (a = nome marcação, pode ser uma letra qualquer)
*Visualizar marcações*| **:marks**
*Ir para determinada marcação*|  **'a** (a =  nome da marcação)
*Apagar marcação*|  **delmarks a** (a =  nome da marcação)
*Apagar todas as marcações*| **delmarks!** (a =  nome da marcação)
*Ir para arquivo através de seu número no marks*|  **'3** / **\`3** (3 = número mark do arquivo)
___

### MOVIMENTAR PELAS ALTERAÇÕES
Descrição | Comando
----------|:------:
*Ir até a última alteração*|  **\`.**
*Ir para a linha da última alteração*| **'.**
*Volta para a última alteração*| **''** (Jumpback)
*Ir para a ultima seleção visual*| **`<** / **`>**
*Ir para a ultima copia*| **`[** / **`]**
*Ir para o último local de modo de inserção*| **'^**
___
