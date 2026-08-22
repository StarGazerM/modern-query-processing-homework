WITH
  "mini-linq/input/0" AS (
    SELECT DISTINCT "c0", "c1"
    FROM "mini-linq/raw/0"
  )
SELECT DISTINCT
  "a0"."c0" AS "a",
  "a2"."c0" AS "d"
FROM "mini-linq/input/0" AS "a0"
CROSS JOIN "mini-linq/input/0" AS "a1"
CROSS JOIN "mini-linq/input/0" AS "a2"
WHERE "a1"."c0" = "a0"."c1"
  AND "a2"."c1" = "a1"."c1"
ORDER BY 1, 2;
