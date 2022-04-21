FROM python:3.9

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1
RUN pip3 install --upgrade pip
WORKDIR /usr/src/crud
COPY ./stocks_products/requirements.txt /usr/src/requirements.txt
RUN pip install -r /usr/src/requirements.txt
COPY . /usr/src/crud
EXPOSE 8000
CMD ["python3", "stocks_products/manage.py", "runserver", "0.0.0.0:8000"]
