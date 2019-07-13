# vagrant-django
A simple Django Application - to be used for the IaC projects, for deployment automation

## Starting the virtual machine with vagrant 

In a command terminal, navigate to folder, vagrant:
> vagrant up

## ssh into the virtual machine
> vagrant ssh

## Clone this project (inside the virtual machine)

> mkdir workspace

> cd workspace

> git clone https://github.com/sameerean/vagrant-django.git

> cd vagrant-django

## Running the app

> cd app 

> ./runserver.sh



## Creating a django app

### Create python virtual env

> cd app

> python3.6 -m venv venv

> source venv/bin/activate

> pip install --upgrade pip

> pip --version

### Install Django

> pip install Django==2.1.*

> python3.6 -m django --version

### Create the app

> django-admin startproject vagrant_django .

### Start app

> python3.6 manage.py migrate

> python3.6 manage.py runserver 0.0.0.0:8000

### Access the app on the host machine

From a browser 

http://localhost:2000

> 



