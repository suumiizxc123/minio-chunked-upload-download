FROM python:3.8-slim-buster

WORKDIR /home/app

COPY requirements.txt requirements.txt

RUN pip3 install -r requirements.txt

COPY . .

# Default to Flask dev server; overridden in production compose to gunicorn
CMD ["python3", "-m" , "flask", "run", "--host=0.0.0.0"]
