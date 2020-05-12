FROM python:3.6.5-onbuild
RUN  mkdir /myapp
COPY /run.sh /myapp
COPY /requirements.txt /myapp
RUN  pip install -r requirements.txt
WORKDIR /myapp
CMD ["/bin/bash","run.sh"]
