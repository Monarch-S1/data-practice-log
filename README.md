# Data Practice Log

Daily deliberate practice in SQL, Python and statistics, kept in public.

I am a Logistics and Supply Chain student training toward analytics and data engineering
for supply chain, logistics and trade. This repo is the training record — not the portfolio.
For finished work see the pinned repositories on my profile.

**Started:** 10 September 2026

---

## Why this repo exists

Three reasons, in order of honesty:

1. **Spaced repetition.** Every problem I fail goes to `sql/_retry/` and gets redone three days
   later. Without a written record I would quietly skip the hard ones.
2. **Reviewable reasoning.** Each solution file records how long it took, whether it was a first
   attempt, and what I actually learned. The learning note matters more than the query.
3. **Consistency, visible.** The commit graph is the only honest measure of whether I showed up.

---

## Structure

```
sql/
  01-joins/              all join types, anti-joins, self-joins
  02-aggregation/        GROUP BY, HAVING, conditional aggregation
  03-ctes/               WITH clauses, recursive CTEs, readability
  04-window-functions/   ROW_NUMBER, RANK, LAG, LEAD, running totals, frames
  05-optimization/       EXPLAIN ANALYZE, indexing, CTE vs subquery cost
  _retry/                problems I failed — the 3-day redo queue
python/
  pandas/                groupby, merges, reshaping, datetimes, vectorisation
  drills/                small scripted exercises, pytest where it fits
stats/                   statistics concepts applied to real data, not toy examples
notes/daily/             one short markdown note per study day
scripts/                 helpers, including new_problem.sh
```

---

## Conventions

**One file per problem.** Named `NNNN-short-slug.sql`, where NNNN is a running counter.

**Every file starts with the same header** (see `sql/_TEMPLATE.sql`) recording source,
difficulty, date, time taken, whether it was a first attempt, and the concept.

**Failures are not deleted.** If I cannot solve something in 15 minutes I stop, read the
solution, write down why I missed it, and copy the file into `_retry/` with the date I
should redo it. Redoing it moves it back out.

**Commit messages follow** `area(concept): what — source`
for example `sql(window): rank customers by monthly revenue — strata 2043`.

---

## Progress

| Concept | Problems solved | First-attempt rate |
|---|---|---|
| Joins | 0 | — |
| Aggregation | 0 | — |
| CTEs | 0 | — |
| Window functions | 0 | — |
| Optimization | 0 | — |
| **Total** | **0** | **—** |

Updated weekly. Target: 300 by month 3, 1,000 by month 12.

---

## Stack

PostgreSQL 16 locally, DBeaver, Python 3.12 with uv, pandas, pytest.
Problems from StrataScratch and DataLemur.
