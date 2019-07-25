DEBUG = True

SQLALCHEMY_DATABASE_URI = 'mysql+pymysql://root:password@db/zsdemo'
SQLALCHEMY_ECHO = False
SQLALCHEMY_TRACK_MODIFICATIONS = False

REDIS_URL = 'redis://redis/0'
CELERY_BROKER_URL = 'redis://redis/1'
