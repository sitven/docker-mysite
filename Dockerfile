FROM python:3.6.5-onbuild
ENV PYTHONUNBUFFERED=1
COPY requirements.txt /opt/cloud/myapp/requirements.txt
WORKDIR /opt/cloud/myapp
RUN  pip install -r requirements.txt -i http://pypi.douban.com/simple --trusted-host pypi.douban.com
