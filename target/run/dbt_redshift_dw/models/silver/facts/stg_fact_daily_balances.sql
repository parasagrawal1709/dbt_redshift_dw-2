
      
        
            delete from "dev"."dev_silver"."stg_fact_daily_balances"
            where (
                balance_id) in (
                select (balance_id)
                from "stg_fact_daily_balances__dbt_tmp150335732313"
            );

        
    

    insert into "dev"."dev_silver"."stg_fact_daily_balances" ("balance_id", "date_id", "account_id", "currency_id", "opening_balance", "closing_balance", "average_balance", "created_at")
    (
        select "balance_id", "date_id", "account_id", "currency_id", "opening_balance", "closing_balance", "average_balance", "created_at"
        from "stg_fact_daily_balances__dbt_tmp150335732313"
    )
  