FROM python:3.6.5-onbuild
ENV PYTHONUNBUFFERED=1
COPY * .
RUN  pip install -r requirements.txt -i http://pypi.douban.com/simple --trusted-host pypi.douban.com
WORKDIR /opt/cloud/myapp
CMD ['/bin/sh', 'run.sh']

