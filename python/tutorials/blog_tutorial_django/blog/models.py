from __future__ import unicode_literals

from django.db import models

# Create your models here.
class Blog(models.Model):
	title = models.CharField(max_length=100)
	body = models.TextField()

	def __str__(self):
		pass

class Comment(models.Model):
	comment = models.TextField(max_length= 500)
	blog = models.ForeignKey(Blog,on_delete=models.CASCADE)
	def __str__(self):
		pass
