
python3.6 -m venv venv
source venv/bin/activate
pip install --upgrade pip
pip install Django==2.1.*
python3.6 manage.py migrate
python3.6 manage.py runserver 0.0.0.0:8000



