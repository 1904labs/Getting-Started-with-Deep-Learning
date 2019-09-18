
FROM python:3.6-slim

RUN mkdir base
WORKDIR base

COPY requirements.txt .

RUN pip install -r requirements.txt

EXPOSE 8888

CMD jupyter notebook --port=8888 --ip=0.0.0.0 --allow-root

