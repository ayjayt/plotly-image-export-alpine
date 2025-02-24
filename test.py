import asyncio

import plotly.express as px
import kaleido

fig = px.scatter(px.data.iris(), x="sepal_length", y="sepal_width", color="species")

asyncio.run(
        kaleido.write_fig(fig, path="/output/figure.png")
        )
