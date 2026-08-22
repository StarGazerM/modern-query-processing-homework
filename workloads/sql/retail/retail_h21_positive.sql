WITH
  "mini-linq/input/0" AS (
    SELECT DISTINCT "c0", "c1"
    FROM "mini-linq/raw/0"
  ),
  "mini-linq/input/1" AS (
    SELECT DISTINCT "c0", "c1", "c2", "c3"
    FROM "mini-linq/raw/1"
  ),
  "mini-linq/input/2" AS (
    SELECT DISTINCT "c0", "c1"
    FROM "mini-linq/raw/2"
  ),
  "mini-linq/input/3" AS (
    SELECT DISTINCT "c0", "c1"
    FROM "mini-linq/raw/3"
  )
SELECT DISTINCT
  "a1"."c0" AS "order_key",
  "a0"."c0" AS "waiting_supplier",
  "a4"."c2" AS "other_supplier"
FROM "mini-linq/input/0" AS "a0"
CROSS JOIN "mini-linq/input/1" AS "a1"
CROSS JOIN "mini-linq/input/2" AS "a2"
CROSS JOIN "mini-linq/input/3" AS "a3"
CROSS JOIN "mini-linq/input/1" AS "a4"
WHERE "a1"."c2" = "a0"."c0"
  AND "a2"."c0" = "a1"."c0"
  AND "a3"."c0" = "a0"."c1"
  AND "a4"."c0" = "a1"."c0"
ORDER BY 1, 2, 3;
