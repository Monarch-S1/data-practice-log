-- ============================================================
-- Problem : Top 3 salaries
-- Source  : DataLemur FAANG
-- Concept : window functions
-- Level   : Medium
-- Date    : 2026-09-15
-- Time    : 10 minS
-- First attempt solved: no
-- ============================================================

-- --- Question (in my own words) ------------------------------
-- Identify the top 3 earners across all departments

-- --- Solution ------------------------------------------------
WITH employeeranking as(
    SELECT
      name,
      salary,
      department_id,
      DENSE_RANK() OVER(
        PARTITION BY department_id ORDER BY salary DESC) as rnk
    FROM employee)
    
SELECT
  d.department_name,
  e.name,
  e.salary
  FROM employeeranking e 
  JOIN department d 
  ON e.department_id = d.department_id
WHERE e.rnk <=3
ORDER BY d.department_name ASC, e.salary DESC, e.name ASC;




