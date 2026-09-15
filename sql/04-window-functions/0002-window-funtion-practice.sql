-- ============================================================
-- Problem : Finding Updated Records
-- Source  : StrataScratch #1029
-- Concept : window functions
-- Level   : Easy 
-- Date    : 2026-09-15
-- Time    : 11 min
-- First attempt solved: yes
-- ============================================================

-- --- Question (in my own words) ------------------------------
-- find the employees and their current salary assuming the current salary is the highest salary earned


-- --- Solution ------------------------------------------------
SELECT DISTINCT
	id,
	first_name,
	last_name,
	department_id,
	salary
FROM 
	(SELECT 
		*,
		ROW_NUMBER() OVER(
		PARTITION BY id ORDER BY salary DESC deparment_id DESC) AS rnk
	FROM ms_employee_salary) s
WHERE rnk = 1
ORDER BY id ASC;



-- --- What I learned ------------------------------------------
-- I learnt that i can query from a subquery and that theres still so much for me to learn.



