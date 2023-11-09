# VIRTUAL ENVIRONMENT

### Solution for terminal in 42 for vscode 1.82
```json
{
    "terminal.integrated.defaultProfile.linux": "bash",
    "terminal.integrated.profiles.linux": {
    "bash": {
    "path": "/usr/bin/flatpak-spawn",
    "args": ["--host", "--env=TERM=xterm-256color", "zsh"],
    "icon": "terminal-zsh",
    "overrideName": true
	}
    }
}
```
#### [Solucao sobrecarga de mensagems no terminal](https://github.com/flathub/com.visualstudio.code/issues/370#issuecomment-1563240250)
#### [Nova Solucao pode usar ZSH](https://github.com/flathub/com.visualstudio.code#readme)
----
## Links
- [Linux Server in Virtual Box](https://youtu.be/nKcfhI1B4mA)
- [VScode remote with virtual-box](https://medium.com/nullifying-the-null/vscode-remote-development-with-virtualbox-aecd702d7933)
- [Totorial code-vault for vscode](https://dev.to/codevault/multi-cursor---visual-studio-code-productivity-features---part-1-1gha)
- [Tutorial 42](https://gist.github.com/mferoc/7b76f9477e0f76befc7161800d9723f7)
- [Global tutorial](https://dev.to/softwaredotcom/vs-code-settings-you-should-customize-5e75)
- [Video Tutorial atalhos](https://www.youtube.com/watch?v=MZgbd7bjCTk)
  - Mover linha: **alt + seta** (cima e baixo)
  - Deletar linha **Ctrl + Shift + k**
  - Multiplo cursor **Alt + click** (nas palavras) 
- [Redenrizar espacos e tabs](https://medium.com/@dukefullstack/visual-studio-code-tips-como-exibir-os-pontos-de-identa%C3%A7%C3%A3o-1f92bdd9cef3)
- Captura de tela bonita (plugin CodeSnap)
---

### [monitor](https://github.com/faleite/42env/blob/main/dcs/monitor.sh)
### [.zshrc](https://github.com/faleite/42env/blob/main/dcs/.zshrc)
### [My settings VSCODE](https://github.com/faleite/42env/blob/main/dcs/settings.json)
---
## Ideia para VM in cloud
### APPS ON TERMINAL
- htop e bashtop - monitoramento do sistema / top
- Ranger - Gerenciador de arquivos em modo texto
- ncdu - verificar espaço livre em disco no Linux
---

## App Terminator como padrão no Ubuntu
- Copy-paste the following into your current terminal:
```bash
gsettings set org.gnome.desktop.default-applications.terminal exec /usr/bin/terminator
gsettings set org.gnome.desktop.default-applications.terminal exec-arg "-x"
```
### Virtual Environment on Linux
<details>
  <summary>Click to expand </summary>

- python
  - pip	
- norminette
- zsh
  - Oh my Zsh
- vim
- git
- ssh
- Apps IOS
  - Karabiner
  - [Displaylink](https://support.displaylink.com/knowledgebase/topics/80209-troubleshooting-macos)
  - Mounty
  - belenaEtcher (montar ISO é preciso altorizar via sudo) 
