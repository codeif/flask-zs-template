export FLASK_APP=zsdemo
export FLASK_DEBUG=1
export FLASK_ENV=development
export PYTHONUNBUFFERED=1
export PACKAGE_NAME=zsdemo

run:
	flask run

build:
	docker build -t ${PACKAGE_NAME} .

init-db:
	flask init-db

collect-models:
	PYTHONPATH=. collect-models ${PACKAGE_NAME} > ${PACKAGE_NAME}/models/__init__.py2

requirements:
	poetry export  --format requirements.txt --without-hashes > requirements.txt

