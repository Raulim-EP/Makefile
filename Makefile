all:
	@echo "Painel de Histórico - Use um dos alvos abaixo:"
	@echo "  make ver_apps_instalados       - Últimos pacotes instalados (dpkg)"
	@echo "  make ver_arquivos_recentes     - Arquivos recentes abertos no ambiente gráfico"
	@echo "  make ver_processos_recentes    - Últimos processos abertos"
	@echo "  make ver_logs_sistema          - Últimos logs do systemd (journalctl)"
	@echo "  make ver_logs_erros            - Últimos logs de erros (journalctl)"
	@echo "  make ver_comandos_recentes     - Últimos comandos digitados no terminal"
	@echo "  make executar_primo     - Identifica todos os primos até o número informado pelo usuário"

ver_apps_instalados:
	@echo ">>> Últimos pacotes instalados:"
	@grep " install " /var/log/dpkg.log | tail -n 20 || echo "Arquivo /var/log/dpkg.log não encontrado."

ver_arquivos_recentes:
	@echo ">>> Arquivos recentes abertos:"
	@cat ~/.local/share/recently-used.xbel 2>/dev/null | grep "href" | tail -n 20 || echo "Nenhum arquivo ou arquivo inexistente."

ver_processos_recentes:
	@echo ">>> Últimos processos rodados (PID, tempo, comando):"
	@ps -eo pid,etime,cmd --sort=-etime | head -n 20

ver_logs_sistema:
	@echo ">>> Últimos logs do sistema:"
	@journalctl -n 30

ver_logs_erros:
	@echo ">>> Últimos logs de erro (priority 3):"
	@journalctl -p 3 -xb -n 20

ver_comandos_recentes:
	@echo ">>> Últimos comandos digitados:"
	@tail -n 20 ~/.bash_history || echo "Arquivo ~/.bash_history não encontrado."

executar_primo:
	@if [ -f primo.c ]; then \
		echo ">>> Compilando primo.c..."; \
		gcc primo.c -o primo && echo ">>> Executando:" && ./primo; \
	else \
		echo "Arquivo primo.c não encontrado."; \
	fi