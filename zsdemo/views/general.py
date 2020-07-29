from flask import Blueprint

from ..exceptions import NoError

bp = Blueprint("general", __name__)


@bp.route("/")
def index():
    print("hello")
    return "hello"
    # raise NoError


@bp.route("/ok")
def no_error():
    raise NoError


@bp.route("/500")
def server_error():
    int("z")
    return "z"
