from __future__ import unicode_literals
from django.db import models
from django.utils import timezone
from django import forms
# Create your models here.


class User(models.Model):
    
    first_name = models.CharField(max_length=50)
    last_name = models.CharField(max_length=50)
    username = models.EmailField()
    password = models.CharField(max_length=100)


class Room(models.Model):
    members = models.ManyToManyField(User, null=True) 
    name = models.CharField(max_length=50)


class Message(models.Model):
    sender = models.ForeignKey(User)
    #recipient = ForeignKey(User)
    body = models.TextField(default="")
    submitted = models.DateTimeField(default=timezone.now())
    room = models.ForeignKey(Room,on_delete=models.CASCADE)
    


