
      
        
            delete from "dev"."dev_silver"."stg_dim_location"
            where (
                location_id) in (
                select (location_id)
                from "stg_dim_location__dbt_tmp150331486654"
            );

        
    

    insert into "dev"."dev_silver"."stg_dim_location" ("location_id", "city", "state", "country", "postal_code", "created_at")
    (
        select "location_id", "city", "state", "country", "postal_code", "created_at"
        from "stg_dim_location__dbt_tmp150331486654"
    )
  