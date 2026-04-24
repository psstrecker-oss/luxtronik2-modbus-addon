FROM ghcr.io/home-assistant/aarch64-base-python:latest

# run.sh MUSS ins Root
COPY run.sh /run.sh
RUN chmod a+x /run.sh

# Python-App
WORKDIR /app
COPY requirements.txt /app/requirements.txt
COPY pyproject.toml /app/pyproject.toml
COPY src /app/src

RUN pip install --no-cache-dir -r /app/requirements.txt \
    && pip install --no-cache-dir /app

CMD ["/run.sh"]
