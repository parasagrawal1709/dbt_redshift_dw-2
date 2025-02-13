
      
        
            delete from "dev"."dev_silver"."stg_fact_customer_interactions"
            where (
                interaction_id) in (
                select (interaction_id)
                from "stg_fact_customer_interactions__dbt_tmp150335486568"
            );

        
    

    insert into "dev"."dev_silver"."stg_fact_customer_interactions" ("interaction_id", "date_id", "channel_id", "location_id", "customer_id", "interaction_type", "interaction_rating", "created_at")
    (
        select "interaction_id", "date_id", "channel_id", "location_id", "customer_id", "interaction_type", "interaction_rating", "created_at"
        from "stg_fact_customer_interactions__dbt_tmp150335486568"
    )
  