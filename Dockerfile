FROM python:3.9
ENV PYTHONUNBUFFERED=1
RUN mkdir /code
COPY . /code/
WORKDIR  /code
RUN python -m pip install --upgrade pip && pip install -r requirements.txt
VOLUME /usr/src/app
