FROM python:latest



WORKDIR /app

COPY requirements.txt ./
COPY cccr_djangoproject/ ./
RUN pip3 install mysqlclient
RUN pip3 install -r /app/requirements.txt

EXPOSE 8000

CMD ["python3", "manage.py", "runserver", "0.0.0.0:8000"]
