-- ──────────────────────────────────────────────────
-- Link        https://www.hackerrank.com/challenges/weather-observation-station-20/problem?isFullScreen=true
-- Problem     Weather Observation Station 20
-- Difficulty  Medium
-- Subdomain   Aggregation
-- Platform    HackerRank
-- Language    mysql
-- Status      Accepted
-- Submitted   2026-08-22, 06:49 p.m.
-- ──────────────────────────────────────────────────

/*
Enter your query here.
*/
SELECT ROUND(AVG(LAT_N), 4)
FROM (
    SELECT 
        LAT_N,
        ROW_NUMBER() OVER (ORDER BY LAT_N) AS rn
    FROM STATION
) t
WHERE rn IN (
    FLOOR((SELECT COUNT(*) FROM STATION) / 2) + 1,
    CEIL((SELECT COUNT(*) FROM STATION) / 2)
);
