FROM ghcr.io/home-assistant/aarch64-base-python:latest

WORKDIR /app

COPY requirements.txt /app/requirements.txt
COPY pyproject.toml /app/pyproject.toml
COPY src /app/src

# run.sh muss ins Root!
COPY run.sh /run.sh

RUN pip install --no-cache-dir -r /app/requirements.txt \
    && pip install --no-cache-dir /app \
    && chmod a+x /run.sh

CMD ["/run.sh"]
