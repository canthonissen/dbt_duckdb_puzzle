select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      SELECT
    *
FROM "AIRBNB"."main"."dim_listings_cleansed" l
INNER JOIN "AIRBNB"."main"."fct_reviews" f
USING (listing_id)
WHERE f.review_date <= l.created_at
LIMIT 10
      
    ) dbt_internal_test