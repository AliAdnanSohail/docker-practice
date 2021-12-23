FROM python:3.8

WORKDIR /usr/src/app

COPY . .
RUN apt-get update && \
	# Global requirements
    DEBIAN_FRONTEND=noninteractive apt-get install --yes \
    build-essential \
    default-mysql-client \
    default-libmysqlclient-dev

RUN pip install -r requirements.txt

EXPOSE 8000

CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
