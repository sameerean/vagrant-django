
python3.6 -m venv venv
source venv/bin/activate
pip install --upgrade pip
pip install Django==2.1.*
python3.6 manage.py migrate
pip3.6 install gunicorn


exec gunicorn --workers 3 --bind unix:vagrant-django-app.sock vagrant_django.wsgi
