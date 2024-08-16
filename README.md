# Building custom docker image.
### 1. Create Dockerfile
### 2. Create docker image from Dockerfile
```
docker image build -f Dockerfile -t webapp .
```
### 3. (optional)Push created image into registry
```
docker image push test/webapp
```
