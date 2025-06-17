# Painel de Histórico e Execução de Programa C - Makefile para Linux (WSL)

Este projeto é um Makefile criado para ajudar no monitoramento do sistema Linux (via WSL ou nativamente), exibindo informações úteis sobre o histórico do sistema, processos e comandos, além de permitir compilar e executar um programa em C chamado `primo.c`.

---

## Como usar

No terminal, navegue até o diretório onde está o `Makefile` e use um dos comandos abaixo:

```
make <alvo>
```

### Alvo padrão:
```
make all
```
Esse comando exibe todos os targets disponíveis e o que cada um faz.

---

## targets disponíveis

| Alvo | Descrição |
|------|-----------|
| `ver_apps_instalados` | Mostra os últimos pacotes instalados no sistema via `dpkg`. |
| `ver_arquivos_recentes` | Lista arquivos abertos recentemente no ambiente gráfico (GNOME/KDE). |
| `ver_processos_recentes` | Exibe os processos mais recentes com PID, tempo de execução e comando. |
| `ver_logs_sistema` | Mostra os últimos 30 registros de log do sistema (`journalctl`). |
| `ver_logs_erros` | Mostra os últimos 20 erros críticos no sistema. |
| `ver_comandos_recentes` | Exibe os últimos comandos digitados no terminal (`~/.bash_history`). |
| `executar_primo` | Compila e executa o programa `primo.c`, que deve estar presente no mesmo diretório. |

---

##  Exemplo de uso

Para compilar e rodar o programa `primo.c`:

```
make executar_primo
```

Para ver os últimos comandos digitados:

```
make ver_comandos_recentes
```

---


## Estrutura esperada

```
projeto/
├── Makefile
└── primo.c
```

---

## Sobre o `primo.c`

O programa `primo.c` é responsável por calcular e exibir todos os números primos até o número digitado pelo usuário.# Makefile
