from django.contrib import admin
from django.urls import include, path

urlpatterns = [
    path('vdjango/', include('vagrant_django.urls')),
    path('admin/', admin.site.urls),f
]
 