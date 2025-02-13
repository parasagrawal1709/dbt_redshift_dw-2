
      
        
            delete from "dev"."dev_silver"."stg_dim_customer"
            where (
                customer_id) in (
                select (customer_id)
                from "stg_dim_customer__dbt_tmp150326317146"
            );

        
    

    insert into "dev"."dev_silver"."stg_dim_customer" ("customer_id", "first_name", "last_name", "full_name", "email", "address", "city", "state", "postal_code", "phone_number", "created_at")
    (
        select "customer_id", "first_name", "last_name", "full_name", "email", "address", "city", "state", "postal_code", "phone_number", "created_at"
        from "stg_dim_customer__dbt_tmp150326317146"
    )
  