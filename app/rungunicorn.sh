
# cd /opt/apps-deploy/sample-django-for-ci

# python3.6 -m venv /opt/apps-deploy/sample-django-for-ci/venv
source /opt/apps-deploy/sample-django-for-ci/venv/bin/activate
# pip3.6 install --user -r /opt/apps-deploy/sample-django-for-ci/requirements.txt
# pip install --upgrade pip
# pip3.6 install Django==2.1.*
# python3.6 /opt/apps-deploy/sample-django-for-ci/manage.py migrate
# pip install --upgrade pip
# pip3.6 install gunicorn

# PATH="$HOME/.local/bin:$PATH"
# export PATH


# exec gunicorn --workers 3 --bind unix:/opt/apps-deploy/sample-django-for-ci/app.sock app.wsgi


python3.6 -m venv venv
source venv/bin/activate
pip install --upgrade pip
pip install Django==2.1.*
python3.6 manage.py migrate

exec gunicorn --workers 3 --bind unix:vagrant-django-app.sock app.wsgi
