FROM python:3.9
ENV PYTHONUNBUFFERED=1
RUN mkdir /code
# COPY . /code/
COPY requirements.txt /code/
WORKDIR  /code
RUN python -m pip install --upgrade pip && pip install -r requirements.txt
VOLUME /code
# EXPOSE 8000
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
