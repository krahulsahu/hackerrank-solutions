-- ──────────────────────────────────────────────────
-- Link        https://www.hackerrank.com/challenges/binary-search-tree-1/problem?isFullScreen=true
-- Problem     Binary Tree Nodes
-- Difficulty  Medium
-- Subdomain   Advanced Select
-- Platform    HackerRank
-- Language    mysql
-- Status      Accepted
-- Submitted   2026-09-27, 10:33 a.m.
-- ──────────────────────────────────────────────────

SELECT DISTINCT
    b1.N,
    CASE
        WHEN b1.P IS NULL THEN 'Root'
        WHEN b2.N IS NULL THEN 'Leaf'
        ELSE 'Inner'
    END AS node_type
FROM BST b1
LEFT JOIN BST b2
    ON b1.N = b2.P
ORDER BY b1.N;
