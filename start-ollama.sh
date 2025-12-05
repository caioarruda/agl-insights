#!/bin/bash

echo "Iniciando servidor Ollama..."
ollama serve &

# espera o server inicializar
sleep 5

echo "Baixando modelo phi:2.7b..."
ollama pull phi:2.7b

echo "Modelo pronto. Mantendo o container ativo."
tail -f /dev/null
