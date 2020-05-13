FROM python:3.6.5-onbuild
ARG pip_url=http://pypi.douban.com/simple
ARG pip_host=pypi.douban.com
ARG work_home=/opt/cloud/myapp
ENV PYTHONUNBUFFERED=1

RUN  mkdir -p ${work_home}
WORKDIR ${work_home}
COPY requirements.txt requirements.txt 
RUN  pip install -r requirements.txt -i ${pip_url} --trusted-host ${pip_host}
COPY . .
