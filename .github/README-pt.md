<div align="center">
<img src="img/powershell.png" />
</div>

<div align="center">

# 🔥 My Powershell Config

Configuração do meu Windows Powershell usando oh-my-posh e PSReadline

</div>

## Pré-requisitos

⚠ **Você deve usar um terminal moderno** como Hyper, Terminus, ConEmu ou o terminal oficial do Windows para ter uma boa experiência no Windows. ⚠

## Tecnologias usadas

- [oh-my-posh](https://github.com/JanDeDobbeleer/oh-my-posh)
- [PSReadline](https://github.com/PowerShell/PSReadLine)

## Como ativar a politica de execução de scripts no Powershell?

```
# Esse comando vai mostrar qual politica está ativa no momento:

$ Get-ExecutionPolicy
```

---

**Tabela de políticas**

| Restriced                                                                               | AllSigned                                                                    | RemoteSigned                                         | Unrestriced                                                                                                            | ByPass                                           |
| --------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------- | ---------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------ |
| Nenhum script pode ser executado e o Powershell só executa comandos no modo interativo. | Somente scripts assinados por uma autoridade confiável podem ser executados. | Scripts baixados da internet precisam ser assinados. | Nenhuma restrição, qualquer script pode ser executado, scripts da internet virão com avisos antes de serem executados. | Nenhum script é bloqueado e nem exibidos avisos. |

<br>

Exemplo: Meu Powershell está usando a politica **RemoteSigned**

<img src="img/screenshot.png" alt="Hyper">

---

```
# Esse comando ativar a execução de scripts:

$ Set-ExecutionPolicy -Scope CurrentUser
```

### Como instalar PSReadline e oh-my-posh

```
> Instala PSReadline

$ Install-Module -Name PSReadLine -AllowPrerelease -Scope CurrentUser -Force -SkipPublisherCheck
```

```
> Instala oh-my-posh

$ Install-Module posh-git -Scope CurrentUser
$ Install-Module oh-my-posh -Scope CurrentUser
```

```
> Instala o Get-ChildItemColor

$ Install-Module -Name Get-ChildItemColor -AllowPrerelease -Scope CurrentUser -Force -SkipPublisherCheck -AllowClobber
```

### Configurar Powershell perfil

```
> Dentro do powershell, execute este comando:

$ if (!(Test-Path -Path $PROFILE )) { New-Item -Type File -Path $PROFILE -Force }
notepad $PROFILE
```

<a href="../theme/profile.ps1">Copie e cole o código na pasta theme</a>
