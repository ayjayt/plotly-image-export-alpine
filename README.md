# Testing plotly static image export with kaleido with an alpine-based container image

Run as `appuser`:

```shell
docker compose run --rm --build app
```

Run as `root`:

```shell
docker compose run --rm --build --user root app
```
