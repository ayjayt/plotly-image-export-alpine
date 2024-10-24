FROM python:3.12-alpine

RUN apk add --no-cache chromium \
    && pip --no-cache-dir install plotly pandas kaleido==0.4.0rc1

WORKDIR /app

COPY test.py /app/test.py

ENTRYPOINT [ "python", "test.py" ]