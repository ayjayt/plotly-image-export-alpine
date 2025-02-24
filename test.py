import asyncio

import plotly.express as px
import kaleido
import logging

logging.getLogger().setLevel(9)
# setting it to 1 will dump tracebacks for expected errors
# it makes the logs look like there was an error

fig = px.scatter(px.data.iris(), x="sepal_length", y="sepal_width", color="species")

asyncio.run(
        kaleido.write_fig(fig, path="/output/figure.png")
        )
