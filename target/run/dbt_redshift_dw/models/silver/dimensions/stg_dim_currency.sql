
      
        
            delete from "dev"."dev_silver"."stg_dim_currency"
            where (
                currency_id) in (
                select (currency_id)
                from "stg_dim_currency__dbt_tmp150326291881"
            );

        
    

    insert into "dev"."dev_silver"."stg_dim_currency" ("currency_id", "currency_code", "currency_name", "created_at")
    (
        select "currency_id", "currency_code", "currency_name", "created_at"
        from "stg_dim_currency__dbt_tmp150326291881"
    )
  