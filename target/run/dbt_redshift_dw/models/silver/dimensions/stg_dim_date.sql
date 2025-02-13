
      
        
            delete from "dev"."dev_silver"."stg_dim_date"
            where (
                date_id) in (
                select (date_id)
                from "stg_dim_date__dbt_tmp150331018146"
            );

        
    

    insert into "dev"."dev_silver"."stg_dim_date" ("date_id", "date", "day", "month", "year", "weekday", "created_at")
    (
        select "date_id", "date", "day", "month", "year", "weekday", "created_at"
        from "stg_dim_date__dbt_tmp150331018146"
    )
  