FROM python:3.8-slim-buster

WORKDIR /src

COPY src/requirements.txt requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

COPY . .
ENV FLASK_APP=src/app.py
CMD [ "python", "-m" , "flask", "run", "--host=0.0.0.0"]