import os
base_dir = os.path.dirname(__file__)

workers=4
bind='0.0.0.0:8000'
worker_class='gevent'
max_requests=6000
backlog = 512
timeout = 30
loglevel = 'info'
# 访问日志文件
access_log_format = '%(t)s %(p)s %(h)s "%(r)s" %(s)s %(L)s %(b)s %(f)s" "%(a)s"'
accesslog = os.path.join(base_dir, 'log/gunicorn_access.log')
# 错误日志文件
errorlog = os.path.join(base_dir, 'log/gunicorn_error.log')
