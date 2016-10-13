from django.contrib import admin
from .models import Blog,Comment

# Register your models here.
@admin.register(Blog)
class BlogAdmin(admin.ModelAdmin):
	pass

#admin.site.register(Blog,BlogAdmin)
