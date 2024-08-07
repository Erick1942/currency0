# Usa una imagen base de Python
FROM python:3.9-slim

# Configura el directorio de trabajo
WORKDIR /app

# Copia los archivos de tu aplicación
COPY requirements.txt requirements.txt
COPY app.py app.py
COPY templates templates


# Instala las dependencias
RUN pip install --no-cache-dir -r requirements.txt

# Expone el puerto en el que tu aplicación escuchará
EXPOSE 5000

# Comando para iniciar la aplicación
CMD ["python", "app.py"]
