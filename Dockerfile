FROM python:3.11
WORKDIR /app
ADD app.py/ /app/
COPY requirements.txt /app
RUN python3 -m pip install -r requirements.txt
# RUN python3 -m pip install ibm_db
EXPOSE 5000
CMD ["python3", "app.py"]