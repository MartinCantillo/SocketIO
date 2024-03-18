from flask import Flask, render_template
from flask_socketio import SocketIO

app = Flask(__name__)

sockteIO=SocketIO(app)

@app.route("/")
def index():
    return render_template("index.html")

@sockteIO.on('message')
def handle_message(msg):
    print(msg)
    #Emitir el mensaje
    sockteIO.emit('message', msg)

if __name__=="__main__":
    sockteIO.run(app,debug=True)

