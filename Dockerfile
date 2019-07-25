# FROM codeif/pipenv-app
FROM zsdemo
WORKDIR /app
COPY . .


ENV TZ=Asia/Shanghai PYTHONUNBUFFERED=1
ENV  FLASK_APP=zsdemo FLASK_ENV=development

ENV PIPENV_PYPI_MIRROR=https://pypi.tuna.tsinghua.edu.cn/simple
RUN pipenv install --dev --skip-lock
