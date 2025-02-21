FROM python:3.13-alpine3.21

RUN apk add --no-cache chromium git
RUN pip --no-cache-dir install plotly pandas

ARG kaleido_uri="git+https://github.com/plotly/kaleido@latest-tag#subdirectory=src/py"
RUN pip install "kaleido>=v1.0.0" || pip install ${kaleido_uri}

WORKDIR /app
# create a user without a password
RUN adduser -D -h /app appuser

USER appuser

COPY test.py /app/test.py

ENTRYPOINT [ "/bin/sh", "-c", "chromium --version && python test.py" ]
