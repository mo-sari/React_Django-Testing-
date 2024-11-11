py -m venv env
env/scritps/activate
pip install django
django-admin startproject core .
pip freeze > requirements.txt


docker build -t <img_name> .
docker run --name <ctn_name> -p 8000:8000 <img_name>

docker-compose build
docker-compose run --rm <service-name> django-admin startproject core .
(since most of the thing specified in docker-compos are just for
the running container, instead of docker-compos up we can use this run to run a one-time command before starting our server in docker-compose)

Workflow to Dockerize and Run the App:
Place Dockerfile, requirements.txt, and docker-compose.yml in your project’s root directory.
If you’re unsure of the packages, you can generate requirements.txt by running:
pip freeze > requirements.txt
Build the image:
docker-compose build
(If starting a new project) Run:
docker-compose run --rm app django-admin startproject core .
Start the application:
docker-compose up
This setup covers everything you need to run a Django app in a Docker container for development or basic deployments. Let me know if you have any other questions!

again:
docker-compose build
docker-compose run --rm app django-admin startproject core .
- add database configurations to the django app.
docker-compose up
docker exec -it <container_name> /bin/bash ==> to run a command in a container(migrations)