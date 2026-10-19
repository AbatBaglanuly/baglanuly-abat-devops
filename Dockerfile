FROM python:3.9-slim

WORKDIR /app

COPY . /app

ENV STUDENT_NAME=Abat
ENV STUDENT_SURNAME=Baglanuly
ENV STUDENT_GROUP=IT2-2314
ENV STUDENT_ID=38350

EXPOSE 8080

CMD ["python3", "-c", "import os, time; print('================================'); print('DevOps Student Application'); print('Name:', os.getenv('STUDENT\_NAME')); print('Surname:', os.getenv('STUDENT\_SURNAME')); print('Group:', os.getenv('STUDENT\_GROUP')); print('Student ID:', os.getenv('STUDENT\_ID')); print('Application is running successfully!'); print('================================'); time.sleep(3600)"]
