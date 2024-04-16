FROM python:3.8

# Defina o diretório de trabalho no contêiner
WORKDIR /app

# Copie o conteúdo da pasta local 'app' para o diretório de trabalho
COPY app /app

# Certifique-se de que o arquivo main.py tem permissões de execução
RUN chmod +x /app/main.py

# Instale as dependências, se necessário
RUN pip install --no-cache-dir -r /app/requirements.txt

# Comando para executar o main.py

CMD ["python", "/app/main.py","-m" , "flask", "run", "--host=192.168.2.138"]
# host tem que ser este ou 0.0.0.0 ?
