from flask import Flask

app = Flask(__name__)

@app.route("/")
def hello_gudetama():
    return "<p>Hello Gudetama! Better eaten than rotten! Seriously I just can't.</p>"