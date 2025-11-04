FROM python:3.11-slim

# Install build dependencies
RUN apt-get update && apt-get install -y \
    gcc \
    g++ \
    python3-dev \
    && rm -rf /var/lib/apt/lists/*

# Upgrade pip and install Python packages
RUN pip install --upgrade pip
RUN pip install isso gunicorn

WORKDIR /app
COPY isso.conf /app/

EXPOSE 10000

CMD ["gunicorn", "--bind", "0.0.0.0:10000", "--worker-class", "gevent", "--workers", "1", "isso.run:application"]

