# building-custom-docker-image
### 1. Create docker image from Dockerfile
docker image build -f Dockerfile -t webapp .
### 2. Push creater image into your registry
docker image push test/webapp
