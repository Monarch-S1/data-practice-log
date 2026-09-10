# SQL

Ordered by the sequence in the plan. Do not skip ahead — window functions
without solid CTEs produces queries you cannot debug.

| Folder | Concept | Why it matters |
|---|---|---|
| `01-joins` | All join types, anti-joins, self-joins | The floor. Assumed knowledge. |
| `02-aggregation` | GROUP BY, HAVING, conditional aggregation | Where most Excel habits transfer well. |
| `03-ctes` | WITH clauses, recursive CTEs | Readability is a hiring signal. |
| `04-window-functions` | ROW_NUMBER, RANK, LAG, LEAD, frames | The line between "knows SQL" and hireable. |
| `05-optimization` | EXPLAIN ANALYZE, indexes, cost | What separates analyst from engineer. |
| `_retry` | Problems I failed | Redo 3 days later. Non-negotiable. |

## Exit test for this section

Solve a four-CTE analytical question using window functions in under 20 minutes, cold,
with no reference material. Until then, keep going.
