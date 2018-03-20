FROM python:3-alpine
RUN pip install pipenv

WORKDIR /app
COPY Pipfile Pipfile.lock ./
RUN pipenv check
RUN pipenv install --deploy --system

COPY . .
ENTRYPOINT ["python3", "my_module.py"]
