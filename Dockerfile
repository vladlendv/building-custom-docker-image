FROM ubuntu
RUN apt-get update && apt-get install -y python3 pipx && apt-get clean
RUN pipx install flask
RUN useradd -m worker
COPY app.py /opt/app.py
ENTRYPOINT FLASK_APP=/opt/app.py flask run --host=0.0.0.0 --port=5000
USER worker
