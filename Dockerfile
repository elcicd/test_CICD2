FROM centos/python-36-centos7:20200609-ad559b7

USER root

WORKDIR /usr/src/app

COPY . .

RUN pip install --no-cache-dir -r requirements.txt

USER 1001

CMD [ "python", "./app.py" ]