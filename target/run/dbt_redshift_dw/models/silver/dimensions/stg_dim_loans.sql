
      
        
            delete from "dev"."dev_silver"."stg_dim_loans"
            where (
                loan_id) in (
                select (loan_id)
                from "stg_dim_loans__dbt_tmp150331401324"
            );

        
    

    insert into "dev"."dev_silver"."stg_dim_loans" ("loan_id", "loan_type", "loan_amount", "interest_rate", "created_at")
    (
        select "loan_id", "loan_type", "loan_amount", "interest_rate", "created_at"
        from "stg_dim_loans__dbt_tmp150331401324"
    )
  