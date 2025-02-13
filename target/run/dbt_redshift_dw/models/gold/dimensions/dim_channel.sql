
      
        
            delete from "dev"."dev_gold"."dim_channel"
            where (
                channel_id) in (
                select (channel_id)
                from "dim_channel__dbt_tmp150335787364"
            );

        
    

    insert into "dev"."dev_gold"."dim_channel" ("channel_id", "channel_name", "created_at")
    (
        select "channel_id", "channel_name", "created_at"
        from "dim_channel__dbt_tmp150335787364"
    )
  