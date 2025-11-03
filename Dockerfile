   FROM python:3.11-slim
   
   RUN pip install isso gunicorn
   
   WORKDIR /app
   COPY isso.conf /app/
   
   EXPOSE 8080
   
   CMD ["gunicorn", "--bind", "0.0.0.0:8080", "--worker-class", "gevent", "--workers", "1", "isso.run:application"]

