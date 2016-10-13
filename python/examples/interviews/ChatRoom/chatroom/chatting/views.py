from django.shortcuts import render
from django.http import HttpResponse
from django.http import JsonResponse
from models import User
import datetime
import json


def current_datetime(request):
	now = datetime.datetime.now()
	html = "<html><body>is now %s</body></html>" % now
	return HttpResponse(html)

def getUsers(request):
	all_users = User.objects.all()
	return JsonResponse(all_users)

# Create your views here.
