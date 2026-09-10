# Python

Two tracks running together.

**`pandas/`** — analysis fluency. Beyond `df.head()`: `groupby().agg()`, merges,
`pivot`/`melt`, datetimes, categoricals, vectorisation over `apply`, memory on large files.

**`drills/`** — software engineering. This is the part self-taught analysts skip and get
filtered out on: virtual environments, `pytest`, type hints, logging, `argparse` CLIs,
reading an API with `requests`.

Rule: anything here that grows past ~100 lines gets moved into a real project repo with
tests and a `pyproject.toml`. Scripts stay scripts; packages become portfolio.
