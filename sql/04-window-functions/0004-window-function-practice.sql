-- ============================================================
-- Problem : Signup Activation Rate
-- Source  : DataLemur Tiktok
-- Concept : window functions
-- Level   : Medium
-- Date    : 2026-09-15
-- Time    : 20 min
-- First attempt solved:no
-- ============================================================

-- --- Question (in my own words) ------------------------------
-- What is the signup activation rate


-- --- Solution ------------------------------------------------
WITH confirmed_users AS (
    SELECT DISTINCT emails.email_id
    FROM emails
    JOIN texts ON emails.email_id = texts.email_id
    WHERE texts.signup_action = 'Confirmed'
)
SELECT 
    ROUND(COUNT(DISTINCT c.email_id) * 1.0 / COUNT(DISTINCT e.email_id),2) AS activation_rate
FROM emails e
LEFT JOIN confirmed_users c ON e.email_id = c.email_id;




