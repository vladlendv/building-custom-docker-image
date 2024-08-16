# Building custom docker image.
### 1. Create Dockerfile
```
# set based OS image
FROM ubuntu

# update apt list
RUN apt-get update

# download apt dependencies
RUN apt-get install -y python3 pipx

# download pip dependencies
RUN pipx install flask

# copy source code into container
COPY app.py /opt/app.py

# start app with a flask command
ENTRYPOINT FLASK_APP=/opt/app.py flask run --host=0.0.0.0 --port=5000
```
### 2. Create docker image from Dockerfile
```
docker image build -f Dockerfile -t webapp .
```
### 3. (optional)Push created image into registry
```
docker image push test/webapp
```
