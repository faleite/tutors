# T M U X

## Guia prático para uso do tmux

#### *Início:*

Função|Comando
------|------|
Abir tmux| ``$ tmux``
Prefixo: (Comando Base)| ``Control-b``
Meu prefixo| ``Alt-b``
___

#### **ATENÇÃO:** ***Use o prefixo + comando para acessar as funções***
___

#### *Navegar pelas janelas:*

Função|Comando
------|------|
Criar uma nova janela| **c**
Ir para a janela anterior| **p**
Ir para a proxima janela| **n**
Ir para a janela pelo seu numero|**0** (número da janela)
Ir para ultima janela acessada| **l**

#### *Manipular janelas:*

Função|Comando
------|------|
Dividir janela verticalmente| **%**
Dividir janela horizontalemnte| **"**
Nomear janela| **, <nome da janela\>**
Listar/Mostrar janelas| **w**
Deletar janela| *Listar janelas* + **x**
Sair/Fechar Janela| **d**
Reabrir janela| **tmux attach -t 0** (número da janela)

#### *Manipular paineis:*

Função|Comando
------|------|
Mudar de painel| **seta para a esquerda/direita**
Alternar entre paineis| **o**
Fechar painel| **exit**
Redimencionar o tamanho dos paineis| **Manter prefixo e usar setas para dimencionar**

#### *Manipular layout:*

Função|Comando
------|------|
Salvar layout (plugin resurrect)| **S**
Restaurar layout (plugin resurrect)| **R**

#### *Outros:*

Função|Comando
------|------|
Atualizar alterações do .tmux.conf| **I**
