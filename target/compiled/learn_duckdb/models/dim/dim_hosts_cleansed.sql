

WITH src_hosts AS (
    SELECT
        *
    FROM
        "AIRBNB"."main"."src_hosts"
)

SELECT
    host_id,
    coalesce(
        host_name,
        'Anonymous'
    ) AS host_name,
    is_superhost,
    created_at,
    updated_at
FROM 
    src_hosts