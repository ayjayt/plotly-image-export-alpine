FROM python:3.13-alpine3.21

RUN apk add --no-cache chromium
RUN pip --no-cache-dir install plotly pandas kaleido==1.0.0rc0 choreographer==0.99.7

WORKDIR /app
# create a user without a password
RUN adduser -D -h /app appuser

USER appuser

COPY test.py /app/test.py

ENTRYPOINT [ "/bin/sh", "-c", "chromium --version && python test.py" ]