"""
@Time:2021/6/30 10:20
@Author:jun.huang
"""
from django.http import JsonResponse


def hello(request):
    return JsonResponse({'hello': 'world44444'})
