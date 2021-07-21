#!/usr/bin/env bash


export LANG=zh_CN.UTF-8
pip install gevent==1.4
pip install gunicorn

nohup gunicorn django_demo.wsgi:application -c gunicorn.py
