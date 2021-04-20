FROM python:stretch
WORKDIR /usr/src/app

COPY . .

RUN pip install --no-cache-dir -r requirements.txt

ENTRYPOINT ["gunicorn", "-b", ":8080", "main:APP"]