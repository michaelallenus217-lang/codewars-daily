/**
*Author: MIchael Allen
*Date: 2025-11-30
*Problem: SQL Basics: SImple JOIN and RANK
*/

SELECT
  p.*,
  COUNT(s.id) AS sale_count,
  RANK() OVER (ORDER BY COUNT(s.id) DESC) AS sale_rank
FROM people p
LEFT JOIN sales s ON p.id = s.people_id
GROUP BY p.id
