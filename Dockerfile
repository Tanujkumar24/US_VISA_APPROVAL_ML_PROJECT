FROM python:3.8.5-slim-buster

WORKDIR /app

COPY . /app

# Install system dependencies (if any)
# RUN apt-get update && apt-get install -y <package-name>

RUN pip install -r requirements.txt -v

CMD ["python3", "app.py"]
