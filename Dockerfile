FROM python:3.12-alpine

RUN apk add --no-cache chromium
RUN pip --no-cache-dir install plotly pandas kaleido==0.4.0rc2

WORKDIR /app

COPY test.py /app/test.py

ENTRYPOINT [ "python", "test.py" ]