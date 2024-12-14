FROM python:3-alpine
LABEL DESCRIPTION="Dockerfile for simple python application"
WORKDIR /app

COPY requirements.txt .
COPY app.py .

RUN pip install --no-cache-dir -r requirements.txt

EXPOSE 3000

CMD [ "app.py" ]
ENTRYPOINT [ "python" ]