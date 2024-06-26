SELECT
  "t2"."r_name",
  "t5"."n_name"
FROM "tpch_region" AS "t2"
INNER JOIN "tpch_nation" AS "t3"
  ON "t2"."r_regionkey" = "t3"."n_regionkey"
INNER JOIN (
  SELECT
    "t2"."r_regionkey",
    "t2"."r_name",
    "t2"."r_comment",
    "t3"."n_nationkey",
    "t3"."n_name",
    "t3"."n_regionkey",
    "t3"."n_comment"
  FROM "tpch_region" AS "t2"
  INNER JOIN "tpch_nation" AS "t3"
    ON "t2"."r_regionkey" = "t3"."n_regionkey"
) AS "t5"
  ON "t2"."r_regionkey" = "t5"."r_regionkey"