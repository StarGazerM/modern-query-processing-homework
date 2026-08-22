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
  ),
  "mini-linq/input/3" AS (
    SELECT DISTINCT "c0", "c1"
    FROM "mini-linq/raw/3"
  ),
  "mini-linq/input/4" AS (
    SELECT DISTINCT "c0", "c1"
    FROM "mini-linq/raw/4"
  ),
  "mini-linq/input/5" AS (
    SELECT DISTINCT "c0"
    FROM "mini-linq/raw/5"
  )
SELECT DISTINCT
  "a1"."c0" AS "order_key",
  "a2"."c2" AS "supplier_key",
  "a0"."c1" AS "nation_key"
FROM "mini-linq/input/0" AS "a0"
CROSS JOIN "mini-linq/input/1" AS "a1"
CROSS JOIN "mini-linq/input/2" AS "a2"
CROSS JOIN "mini-linq/input/3" AS "a3"
CROSS JOIN "mini-linq/input/4" AS "a4"
CROSS JOIN "mini-linq/input/5" AS "a5"
WHERE "a1"."c1" = "a0"."c0"
  AND "a2"."c0" = "a1"."c0"
  AND "a3"."c0" = "a2"."c2"
  AND "a3"."c1" = "a0"."c1"
  AND "a4"."c0" = "a0"."c1"
  AND "a5"."c0" = "a4"."c1"
ORDER BY 1, 2, 3;
