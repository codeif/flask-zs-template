# FROM codeif/pipenv-app
FROM python:3.7
WORKDIR /app
COPY . .


ENV TZ=Asia/Shanghai PYTHONUNBUFFERED=1
ENV  FLASK_APP=zsdemo FLASK_ENV=development

# ENV PIPENV_PYPI_MIRROR=https://pypi.tuna.tsinghua.edu.cn/simple
RUN pip config set global.index-url https://pypi.tuna.tsinghua.edu.cn/simple
RUN pip install -U pip
RUN pip install -r requirements.txt
