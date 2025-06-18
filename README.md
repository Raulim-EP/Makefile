# Painel de Histórico e Execução de Código em linguagem C

Este é um projeto criado para a cadeira de Engenharia de Computação, com o objetivo de desenvolver o conhecimento em Linux, principalmente sobre makefile, com a contribuiçaõ de um pequeno código em linguagem C com o arquivo denominado de `primo.c`.

---

## Como usar

No terminal, navegue até o diretório onde está o `Makefile` e use um dos comandos abaixo:

```
make <target>
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
| `ver_arquivos_recentes` | Lista arquivos abertos recentemente no ambiente gráfico. |
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
├── primo.c
└──README.md
```

---

## Sobre o `primo.c`

O código `primo.c` é feito para calcular os números primos do 1 até o número digitado pelo úsuario, focado para economizar processamento e entregar o resultado mais rápido.
