# Since flask module import Flask class
from flask import Flask

# Create a instance or object app of Flask class
app = Flask(__name__)

#  Define a route when we call our function hello()
@app.route('/')
def hello():
    return '<b>Bienvenue et Bonjour tout le monde </b>'

if __name__ =="__main__":
    app.run(host='0.0.0.0', port=5000)
