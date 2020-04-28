from flask import current_app
from celery import Celery
from flask_zs import BaseModel
from flask_redis import FlaskRedis
from werkzeug.local import LocalProxy
from flask_sqlalchemy import SQLAlchemy

logger = LocalProxy(lambda: current_app.logger)
db = SQLAlchemy(model_class=BaseModel)
redis_store = FlaskRedis(decode_responses=True, decode_components=True)
celery = Celery(include=["zsdemo.tasks"])
