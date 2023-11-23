FROM python:3.11.5-slim

WORKDIR /app

COPY requirements.txt ./

RUN pip install -r requirements.txt

COPY . .

RUN flask db init
RUN flask db migrate
RUN flask db upgrade

EXPOSE 4000

CMD [ "flask", "run", "--host=0.0.0.0", "--port=4000"]