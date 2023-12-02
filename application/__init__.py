from flask import Flask, render_template, url_for
import logging
import os

from flask import Flask
from flask_cors import CORS
from jinja2 import ChoiceLoader, PackageLoader, PrefixLoader

from config import Config

# from application.main.views import (main)

from application.main.middleware.error_handler import (
    server_forbidden,
    page_not_found,
    too_many_requests,
    unknown_server_error,
    gateway_timeout,
)


app = Flask(__name__)
app.config.from_object(Config)

# app.register_blueprint(main)

app.jinja_loader = ChoiceLoader(
    [
        PackageLoader("application"),
        PrefixLoader({"govuk_frontend_jinja": PackageLoader("govuk_frontend_jinja")}),
    ]
)

app.jinja_env.trim_blocks = True
app.jinja_env.lstrip_blocks = True

app.register_error_handler(403, server_forbidden)
app.register_error_handler(404, page_not_found)
app.register_error_handler(500, unknown_server_error)
app.register_error_handler(504, gateway_timeout)

@app.route("/", methods=["GET", "POST"])
def index(): 
    return render_template("pages/index.html")
