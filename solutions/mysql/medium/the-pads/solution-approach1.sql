-- ──────────────────────────────────────────────────
-- Link        https://www.hackerrank.com/challenges/the-pads/problem?isFullScreen=true
-- Problem     The PADS
-- Difficulty  Medium
-- Subdomain   Advanced Select
-- Platform    HackerRank
-- Language    mysql
-- Status      Accepted
-- Submitted   2026-08-22, 07:29 p.m.
-- ──────────────────────────────────────────────────

/*
Enter your query here.
*/

Select CONCAT(Name, "(", LEFT(Occupation,1), ")") from Occupations ORDER BY Name ASC;
Select CONCAT("There are a total of ", Count(Occupation), " ",Lower(Occupation), "s.") from Occupations GROUP by Occupation ORDER BY COUNT(Occupation) ASC, Occupation ASC;;
