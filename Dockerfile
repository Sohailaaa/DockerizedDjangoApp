FROM python:3.10
RUN mkdir /app
WORKDIR /app
COPY requirements.txt  /app/requirements.txt
RUN pip3 install --no-cache-dir -r requirements.txt
COPY . .
CMD ["python3","manage.py","runserver","0.0.0.0:8080"]
