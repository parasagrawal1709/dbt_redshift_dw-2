

SELECT
    currency_id,
    currency_code,
    currency_name,
    getdate() as created_at
FROM
    dev_bronze.ext_currencies