from django.contrib import admin
from .models import Message
from .models import Room
from .models import User

admin.site.register(Message)
admin.site.register(Room)
admin.site.register(User)

# Register your models here.
