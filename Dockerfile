FROM alpine:latest

RUN apk add --no-cache python3 curl
RUN apk add --no-cache curl
RUN curl https://bootstrap.pypa.io/get-pip.py -o /tmp/get-pip.py
RUN python3 /tmp/get-pip.py
RUN pip install mkdocs
RUN pip install mkdocs-bootswatch

WORKDIR /mkdocs
EXPOSE 8000
ENTRYPOINT ["mkdocs", "serve", "-a", "0.0.0.0:8000"]

#COPY mkdocs/ /mkdocs/
#RUN mkdocs serve -a 0.0.0.0:8000

#RUN apk add --no-cache openrc
#RUN rc-update add local default
#COPY mkdocs-serve.start /etc/local.d/
# chmod +x filename.sh
#cd /etc/local.d/mkdocs-serve.start

