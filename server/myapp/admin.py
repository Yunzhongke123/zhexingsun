from django.contrib import admin

# Register your models here.
from myapp.models import Classification, Thing,  User

admin.site.register(Classification)
admin.site.register(Thing)
admin.site.register(User)
