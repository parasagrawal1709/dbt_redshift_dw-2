
      
        
            delete from "dev"."dev_silver"."stg_dim_investment_type"
            where (
                investment_type_id) in (
                select (investment_type_id)
                from "stg_dim_investment_type__dbt_tmp150331010312"
            );

        
    

    insert into "dev"."dev_silver"."stg_dim_investment_type" ("investment_type_id", "investment_type_name", "created_at")
    (
        select "investment_type_id", "investment_type_name", "created_at"
        from "stg_dim_investment_type__dbt_tmp150331010312"
    )
  