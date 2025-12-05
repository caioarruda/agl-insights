#!/bin/bash

echo "Iniciando servidor Ollama..."
ollama serve &

# espera o server inicializar
sleep 5

echo "Baixando modelo llama3.1:3b-instruct-q4_K_M..."
ollama pull llama3.1:3b-instruct-q4_K_M

echo "Modelo pronto. Mantendo o container ativo."
tail -f /dev/null
