FROM ghcr.io/home-assistant/aarch64-base-python:3.19

WORKDIR /app

COPY requirements.txt /app/requirements.txt
COPY pyproject.toml /app/pyproject.toml
COPY src /app/src
COPY run.sh /app/run.sh

RUN pip install --no-cache-dir -r /app/requirements.txt \
    && pip install --no-cache-dir /app \
    && chmod a+x /app/run.sh

CMD ["/run.sh"]
