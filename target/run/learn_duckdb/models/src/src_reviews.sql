
  
  create view "AIRBNB"."main"."src_reviews__dbt_tmp" as (
    WITH raw_reviews AS (
    SELECT * FROM "AIRBNB"."raw"."raw_reviews"
)

SELECT
    listing_id,
    date AS review_date,
    reviewer_name,
    comments AS review_text,
    sentiment AS reviewer_sentiment
FROM
    raw_reviews
  );
