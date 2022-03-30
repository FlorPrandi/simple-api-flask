FROM ubuntu:latest  
# desde que imagen vamos a trabajar, en este caso la ultima version de ubuntu  
LABEL project = "nuclio-flask-api"
# etiquetar el contenedor
LABEL version="1.0"
RUN apt update -y 
# Inicializamos el directorios
RUN apt install -y python3-pip
# Instalamos el paquete de python
COPY . /app
# hace una copia desde hasta copia todo . app.py Dockerfile requierments.txt
# si no quiero todo, uso el docker.ignore
WORKDIR /app
# define ese directorio como directorio de trabajo
RUN pip3 install -r requierements.txt
# instalamos todas las librerias de py que estan dentro del .txt de requirements, podemos anadir la version
ENTRYPOINT ["python3"]
# abri la consula de comando de python3, no me vas a abrir zsh, ni bash
CMD ["app.py"]
# cuando abras la consola python3, ejecuta el comando de app.py osea nuestro servidor
