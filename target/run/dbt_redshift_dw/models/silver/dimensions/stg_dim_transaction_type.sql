
      
        
            delete from "dev"."dev_silver"."stg_dim_transaction_type"
            where (
                transaction_type_id) in (
                select (transaction_type_id)
                from "stg_dim_transaction_type__dbt_tmp150335179929"
            );

        
    

    insert into "dev"."dev_silver"."stg_dim_transaction_type" ("transaction_type_id", "transaction_type_name", "created_at")
    (
        select "transaction_type_id", "transaction_type_name", "created_at"
        from "stg_dim_transaction_type__dbt_tmp150335179929"
    )
  