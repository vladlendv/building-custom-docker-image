# Building custom docker image.
### 1. Create Dockerfile
```
# set based OS image
FROM ubuntu
# update apt list, download apt dependencies, and clean temp files
RUN apt-get update && apt-get install -y python3 pipx && apt-get clean
# download pip dependencies
RUN pipx install flask
# add new user
RUN useradd -m worker
# copy source code into container
COPY app.py /opt/app.py
# start app with a flask command
ENTRYPOINT FLASK_APP=/opt/app.py flask run --host=0.0.0.0 --port=5000
USER worker
```
### 2. Create docker image from Dockerfile
```
docker image build -f Dockerfile -t webapp .
```
### 3. (optional)Push created image into registry
```
docker image push test/webapp
```
