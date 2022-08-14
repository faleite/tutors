# T M U X

## Guia prático para uso do tmux
___

Comando Base (Prefixo):
``Control-b`` (meu prefixo = <option> + <->)
___
Abrir o tmux: **tmux**

Criar uma nova janela: **c-b c**

Ir para a janela anterior:
**c-b p**

Ir para a proxima janela:
**c-b n**

Ir para a janela pelo seu numero:
**c-b 0** (numero da janela)

Ir para ultima janela acessada:
**c-b l**

Nomear janela:
**c-b , nome da janela**

Listar/Mostrar janelas: **c-b w**

Sair/Fechar Janela: **c-b d**

Reabrir janela:
**tmux attach -t 0**
(numero da janela)

Dividir janela verticalmente:
**c-b %**

Mudar de painel:
**c-b-(seta esquerda/direita)**

Alternar entre de paineis:
**c-b o**

Fechar painel: **exit**

Dividir janela horizontalemnte:
**c-b "**

Redimencionar o tamanho dos
paineis: **Manter precionado c-b
e usar setas para dimencionar**

Salvar layout (plugin resurrect)
**c-b-s**

Restaurar layout (plugin resurrect)
**c-b-r**

Atualizar alterações do .tmux.conf:
**Prefix-I**
