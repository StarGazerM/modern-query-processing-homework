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
    SELECT DISTINCT "c0", "c1", "c2", "c3"
    FROM "mini-linq/raw/2"
  )
SELECT DISTINCT
  "a1"."c0" AS "order_key",
  "a0"."c0" AS "customer_key"
FROM "mini-linq/input/0" AS "a0"
CROSS JOIN "mini-linq/input/1" AS "a1"
CROSS JOIN "mini-linq/input/2" AS "a2"
WHERE "a1"."c1" = "a0"."c0"
  AND "a2"."c0" = "a1"."c0"
ORDER BY 1, 2;
