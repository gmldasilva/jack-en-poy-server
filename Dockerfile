FROM python:3.9
ARG PROJECT_NAME=jack-en-poy-server
COPY requirements.txt /requirements.txt

RUN pip3 install -r /requirements.txt
COPY src /src
WORKDIR /src

EXPOSE 5555

CMD ["python3", "server.py"]