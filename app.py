# Construimos un servidor web

from flask import Flask # no hace falta desc flask, lo haremos dentro de contenedror
app = Flask(__name__) # usamos flask para crear rutas los '/' lo son, le pasa rutas al serv web
@app.route('/') # la / sin nada al lado es la mail page

def hello_world():
    return "Hello World"

if __name__ == '__main__': #ejecuta app por la IP donde se este desplegando el serv web
    app.run(host='0.0.0.0') # SIEMPRE van estas dos lineas al final