FROM python:3.7

RUN mkdir /opt/django_demo
#设置工作目录
WORKDIR /opt/django_demo
#将当前目录加入到工作目录中
ADD . /opt/django_demo
#install any needed pacakges in requirements.txt，你要把所有需要安装的Python模块加到这文件中。
RUN pip install -r requirements.txt
#对外暴露端口
EXPOSE 8080 5000
#设置环境变量
ENV SPIDER=/django_demo
RUN chmod +x start_server.sh
#ENTRYPOINT ["/bin/bash", "-c", "start_server.sh"]
CMD ["python", "manage.py", "runserver", "0.0.0.0:8080"]
