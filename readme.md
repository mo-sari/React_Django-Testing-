py -m venv env
env/scritps/activate
pip install django
django-admin startproject core .
pip freeze > requirements.txt


docker build -t <img_name> .
docker run --name <ctn_name> -p 8000:8000 <img_name>
