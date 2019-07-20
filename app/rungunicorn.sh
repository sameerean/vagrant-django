
python3.6 -m venv venv
source venv/bin/activate
pip install --upgrade pip
pip install Django==2.1.*
python3.6 manage.py migrate

exec gunicorn --workers 3 --bind unix:vagrant-django-app.sock app.wsgi
