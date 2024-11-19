#!/bin/bash

# Verifica se a URL foi passada como parâmetro
if [ -z "$1" ]; then
  echo "Por favor, forneça a URL da aplicação para escanear como argumento. Use: ./run-zap-scan.sh <url>"
  exit 1
fi

# Caminho para o arquivo de regras
RULES_FILE="./zap-rules.txt"

# A URL passada como argumento
TARGET_URL=$1

# Executa o ZAP com a URL fornecida
docker run -t owasp/zap2docker-stable zap-baseline.py -t $TARGET_URL -r reports/zap_report.html
