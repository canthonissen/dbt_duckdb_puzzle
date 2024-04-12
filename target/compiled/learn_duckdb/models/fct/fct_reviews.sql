
WITH src_reviews AS (
    SELECT * FROM "AIRBNB"."main"."src_reviews"
)
SELECT
    md5(cast(coalesce(cast(listing_id as TEXT), '_dbt_utils_surrogate_key_null_') || '-' || coalesce(cast(review_date as TEXT), '_dbt_utils_surrogate_key_null_') || '-' || coalesce(cast(reviewer_name as TEXT), '_dbt_utils_surrogate_key_null_') || '-' || coalesce(cast(review_text as TEXT), '_dbt_utils_surrogate_key_null_') as TEXT)) AS review_id,
    * 
FROM src_reviews
WHERE review_text IS NOT NULL
