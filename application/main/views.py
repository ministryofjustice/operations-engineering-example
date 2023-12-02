import datetime
import logging
import os
from collections import Counter
from functools import wraps
from urllib.parse import quote_plus, urlencode

from flask import (Blueprint, abort, current_app, jsonify, redirect,
                   render_template, render_template_string, request, session,
                   url_for)

# Empty as yet
