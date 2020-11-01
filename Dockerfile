from ubuntu:16.04

MAINTAINER Tuhin Sharma "tuhinsharma121@gmail.com"

RUN apt-get update --fix-missing && \
    apt-get -y upgrade && \
    apt-get install -y python3-pip



# --------------------------------------------------------------------------------------------------
# install python packages
# --------------------------------------------------------------------------------------------------
COPY ./requirements.txt /
RUN pip3 install -r /requirements.txt && rm /requirements.txt



# --------------------------------------------------------------------------------------------------
# copy files
# --------------------------------------------------------------------------------------------------

COPY . /

EXPOSE 8000

CMD ["python manage.py runserver"]

