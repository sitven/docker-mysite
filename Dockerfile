FROM python:3.6.5-onbuild
ENV PYTHONUNBUFFERED=1
RUN mkdir -p /opt/cloud/myapp/
WORKDIR /opt/cloud/myapp
COPY . .
RUN  pip install -r requirements.txt -i http://pypi.douban.com/simple --trusted-host pypi.douban.com
