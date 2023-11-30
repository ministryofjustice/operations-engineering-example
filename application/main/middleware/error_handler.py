import logging

from flask import (
    render_template,
)

logger = logging.getLogger(__name__)

def server_forbidden(err):
    logger.error("server_forbidden(): %s", err)
    return render_template("pages/errors/403.html"), 403

def page_not_found(err):
    logger.error("A request was made to a page that doesn't exist %s", err)
    return render_template("pages/errors/404.html"), 404

def too_many_requests(err):
    logger.error("Too many attempts to access this page %s", err)
    return render_template("pages/errors/429.html"), 429

def unknown_server_error(err):
    logger.error("An unknown server error occurred: %s", err)
    return render_template("pages/errors/500.html"), 500

def gateway_timeout(err):
    logger.error("A gateway timeout error occurred: %s", err)
    return render_template("pages/errors/504.html"), 504
