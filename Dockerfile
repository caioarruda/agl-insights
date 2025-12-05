FROM ollama/ollama:latest

# Copia um script que vai rodar dentro do container
COPY start-ollama.sh /start-ollama.sh
RUN chmod +x /start-ollama.sh

# Baixa o modelo durante o build (opcional, mas recomendado)
RUN ollama pull llama3:8b-instruct-q4_K_M

# EntryPoint: mantém o container ativo e inicia o server
ENTRYPOINT ["/start-ollama.sh"]
