from flask import Flask, render_template, url_for
import logging
import os

from flask import Flask
from flask_cors import CORS
from jinja2 import ChoiceLoader, PackageLoader, PrefixLoader

from config import Config


app = Flask(__name__)
app.config.from_object(Config)

app.jinja_loader = ChoiceLoader(
    [
        PackageLoader("application"),
        PrefixLoader({"govuk_frontend_jinja": PackageLoader("govuk_frontend_jinja")}),
    ]
)

app.jinja_env.trim_blocks = True
app.jinja_env.lstrip_blocks = True


@app.route("/", methods=["GET", "POST"])
def index(): 
    return render_template("index.html")

# if __name__ == '__main__':
#     app.run()