
SELECT
    *
FROM
    "AIRBNB"."main"."dim_listings_cleansed"
WHERE
    minimum_nights < 1
