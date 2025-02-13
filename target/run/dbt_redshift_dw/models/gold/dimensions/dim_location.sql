
      
        
            delete from "dev"."dev_gold"."dim_location"
            where (
                location_id) in (
                select (location_id)
                from "dim_location__dbt_tmp150343906994"
            );

        
    

    insert into "dev"."dev_gold"."dim_location" ("location_id", "city", "state", "country", "postal_code", "created_at")
    (
        select "location_id", "city", "state", "country", "postal_code", "created_at"
        from "dim_location__dbt_tmp150343906994"
    )
  