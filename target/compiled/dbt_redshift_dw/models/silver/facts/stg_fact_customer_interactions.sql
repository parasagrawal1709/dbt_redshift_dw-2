

SELECT
    interaction_id,
    date_id,
    channel_id,
    location_id,
    customer_id,
    interaction_type,
    interaction_rating,
    getdate() as created_at
FROM
    dev_bronze.ext_fact_customer_interactions