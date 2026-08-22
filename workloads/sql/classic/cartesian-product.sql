WITH
  "mini-linq/input/0" AS (
    SELECT DISTINCT "c0"
    FROM "mini-linq/raw/0"
  ),
  "mini-linq/input/1" AS (
    SELECT DISTINCT "c0", "c1"
    FROM "mini-linq/raw/1"
  )
SELECT DISTINCT
  "a0"."c0" AS "x",
  "a1"."c0" AS "y",
  "a1"."c1" AS "z"
FROM "mini-linq/input/0" AS "a0"
CROSS JOIN "mini-linq/input/1" AS "a1"
ORDER BY 1, 2, 3;
