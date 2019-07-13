from django.http import HttpResponse
from django.views.generic.base import TemplateView
from django.shortcuts import render
import json


def index(request):
    version = "2.0"
    config = json.loads(open('config/defaults.json').read())
    return render(request, 'index.html', {'version': config["version"]})

class home(TemplateView):
        template_name='home.html'

