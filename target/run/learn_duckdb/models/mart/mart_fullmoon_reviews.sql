
  
    
    

    create  table
      "AIRBNB"."main"."mart_fullmoon_reviews__dbt_tmp"
  
    as (
      

WITH fct_reviews AS (
    SELECT * FROM "AIRBNB"."main"."fct_reviews"
),
full_moon_dates AS (
    SELECT * FROM "AIRBNB"."main"."seed_full_moon_dates"
)

SELECT 
    r.*,
    CASE
        WHEN fm.full_moon_date IS NULL THEN 'not full moon'
        ELSE 'full_moon'
    END AS is_full_moon
FROM
    fct_reviews r
    LEFT JOIN full_moon_dates fm
    ON (date_trunc('day', r.review_date) = (fm.full_moon_date + 1))
    );
  
  