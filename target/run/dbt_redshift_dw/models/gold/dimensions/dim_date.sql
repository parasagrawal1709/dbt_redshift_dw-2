
      
        
            delete from "dev"."dev_gold"."dim_date"
            where (
                date_id) in (
                select (date_id)
                from "dim_date__dbt_tmp150341237156"
            );

        
    

    insert into "dev"."dev_gold"."dim_date" ("date_id", "date", "day", "month", "year", "weekday", "created_at")
    (
        select "date_id", "date", "day", "month", "year", "weekday", "created_at"
        from "dim_date__dbt_tmp150341237156"
    )
  