FROM ubuntu
RUN apt-get update
RUN apt-get install -y python3 pipx
RUN pipx install flask
COPY app.py /opt/app.py
ENTRYPOINT FLASK_APP=/opt/app.py flask run --host=0.0.0.0 --port=5000
