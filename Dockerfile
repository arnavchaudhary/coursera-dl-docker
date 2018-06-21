#
# Coursera-dl Docker file (https://github.com/coursera-dl/coursera)

# Pull base image
FROM python:3.6-slim

RUN apt-get install build-essential python-dev libssl-dev libffi-dev


RUN pip install coursera-dl
RUN pip install urllib3 pyasn1 ndg-httpsclient pyOpenSSL


VOLUME /downloads

ENTRYPOINT ["coursera-dl", "--path", "/downloads"]
