FROM python:3.12-alpine

RUN apk add --no-cache chromium
RUN pip --no-cache-dir install plotly pandas kaleido==0.4.0rc3

WORKDIR /app
# create a user without a password
RUN adduser -D -h /app appuser

USER appuser

COPY test.py /app/test.py

ENTRYPOINT [ "python", "test.py" ]