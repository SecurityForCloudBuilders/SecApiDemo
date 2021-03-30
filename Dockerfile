FROM python:3.8
COPY . /app-api
WORKDIR /app-api
RUN pip3 install --upgrade pip && \
    pip3 install --trusted-host pypi.python.org -r requirements.txt
EXPOSE 8000
ENTRYPOINT ["python3", "mysite/manage.py","runserver","0.0.0.0:8000"]
