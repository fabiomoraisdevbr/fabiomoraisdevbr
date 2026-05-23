
# Use uma imagem Python leve
FROM python:3.12-slim
 
# Diretório de trabalho dentro do container
WORKDIR /app
 
# Instala o Flask
RUN pip install --no-cache-dir flask
 
# Copia os arquivos da aplicação
# Ajuste os caminhos conforme a estrutura do seu projeto
COPY main.py .
COPY index.html .
 
# Se tiver uma pasta de imagens/estáticos, copie também.
COPY static/ ./static/

 
# Expõe a porta que o Flask usa
EXPOSE 8080
 
# Comando para iniciar a aplicação
CMD ["python3", "main.py"]
 