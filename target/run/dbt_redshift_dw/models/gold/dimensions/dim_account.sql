
      
        
            delete from "dev"."dev_gold"."dim_account"
            where (
                account_id) in (
                select (account_id)
                from "dim_account__dbt_tmp150339966382"
            );

        
    

    insert into "dev"."dev_gold"."dim_account" ("account_id", "customer_id", "account_number", "account_type", "account_balance", "credit_score", "created_at")
    (
        select "account_id", "customer_id", "account_number", "account_type", "account_balance", "credit_score", "created_at"
        from "dim_account__dbt_tmp150339966382"
    )
  