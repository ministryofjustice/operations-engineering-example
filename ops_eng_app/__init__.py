from flask import Flask

app = Flask(__name__)

@app.route("/")
def hello_gudeatama():
    return "<p>Hello Gudetama! Better eaten than rotten! Seriously I just can't. Learn to restm not to quit.</p>"