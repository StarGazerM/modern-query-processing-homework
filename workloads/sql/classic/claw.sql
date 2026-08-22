WITH
  "mini-linq/input/0" AS (
    SELECT DISTINCT "c0", "c1"
    FROM "mini-linq/raw/0"
  ),
  "mini-linq/input/1" AS (
    SELECT DISTINCT "c0", "c1"
    FROM "mini-linq/raw/1"
  ),
  "mini-linq/input/2" AS (
    SELECT DISTINCT "c0", "c1"
    FROM "mini-linq/raw/2"
  )
SELECT DISTINCT
  "a0"."c0" AS "center",
  "a0"."c1" AS "a",
  "a1"."c1" AS "b",
  "a2"."c1" AS "c"
FROM "mini-linq/input/0" AS "a0"
CROSS JOIN "mini-linq/input/1" AS "a1"
CROSS JOIN "mini-linq/input/2" AS "a2"
WHERE "a1"."c0" = "a0"."c0"
  AND "a2"."c0" = "a0"."c0"
ORDER BY 1, 2, 3, 4;
