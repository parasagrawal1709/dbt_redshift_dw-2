
      
        
            delete from "dev"."dev_silver"."stg_dim_account"
            where (
                account_id) in (
                select (account_id)
                from "stg_dim_account__dbt_tmp150326292815"
            );

        
    

    insert into "dev"."dev_silver"."stg_dim_account" ("account_id", "customer_id", "account_number", "account_type", "account_balance", "credit_score", "created_at")
    (
        select "account_id", "customer_id", "account_number", "account_type", "account_balance", "credit_score", "created_at"
        from "stg_dim_account__dbt_tmp150326292815"
    )
  