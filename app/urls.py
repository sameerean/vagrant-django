from django.contrib import admin
from django.urls import include, path

urlpatterns = [
    path('vagrant-django/', include('vagrant-django.urls')),
    path('admin/', admin.site.urls),
]
 