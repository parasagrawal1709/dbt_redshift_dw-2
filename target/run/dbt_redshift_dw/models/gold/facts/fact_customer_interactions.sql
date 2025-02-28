

  create view "dev"."dev_gold"."fact_customer_interactions__dbt_tmp" as (
    

WITH source_data as (
    SELECT
        interaction_id,
        date_id,
        channel_id,
        location_id,
        customer_id,
        interaction_type,
        interaction_rating
        FROM "dev"."dev_silver"."stg_fact_customer_interactions"
)

SELECT
    s.date_id,
    s.interaction_id,
    d.date as interaction_date,
    s.customer_id,
    c.first_name,
    c.last_name,
    c.full_name,
    c.city,
    c.state,
    c.postal_code,
    l.country,
    s.channel_id,
    ch.channel_name,
    s.interaction_type,
    s.interaction_rating
FROM source_data s
INNER JOIN "dev"."dev_gold"."dim_date" as d on s.date_id = d.date_id
INNER JOIN "dev"."dev_gold"."dim_customer" as c on s.customer_id = c.customer_id
INNER JOIN "dev"."dev_gold"."dim_location" as l on s.location_id = l.location_id
INNER JOIN "dev"."dev_gold"."dim_channel" as ch on s.channel_id = ch.channel_id
  ) ;
