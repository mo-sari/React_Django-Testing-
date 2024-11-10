py -m venv env
env/scritps/activate
pip install django
django-admin startproject core .
pip freeze > requirements.txt
