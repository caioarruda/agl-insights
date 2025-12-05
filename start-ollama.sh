#!/bin/bash

echo "Iniciando Ollama Server..."
ollama serve &

sleep 5

echo "Servidor iniciado."
echo "Container ativo. Press Ctrl+C para sair."

# Mantém o container acordado para sempre
tail -f /dev/null
