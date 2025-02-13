
      
        
            delete from "dev"."dev_gold"."dim_customer"
            where (
                customer_id) in (
                select (customer_id)
                from "dim_customer__dbt_tmp150340059679"
            );

        
    

    insert into "dev"."dev_gold"."dim_customer" ("customer_id", "first_name", "last_name", "full_name", "email", "address", "city", "state", "postal_code", "phone_number", "created_at")
    (
        select "customer_id", "first_name", "last_name", "full_name", "email", "address", "city", "state", "postal_code", "phone_number", "created_at"
        from "dim_customer__dbt_tmp150340059679"
    )
  