
      
        
            delete from "dev"."dev_silver"."stg_dim_channel"
            where (
                channel_id) in (
                select (channel_id)
                from "stg_dim_channel__dbt_tmp150326312586"
            );

        
    

    insert into "dev"."dev_silver"."stg_dim_channel" ("channel_id", "channel_name", "created_at")
    (
        select "channel_id", "channel_name", "created_at"
        from "stg_dim_channel__dbt_tmp150326312586"
    )
  