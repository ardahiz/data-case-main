-- EXAMPLE / PLACEHOLDER staging model.
-- Its only purpose is to make `dbt run` and `dbt test` succeed out of the box so
-- you can confirm your setup works. Feel free to delete, rename, or rewrite it.
-- It does NOT represent the structure we expect — that's your decision to make.

with source as (
    select * from {{ ref('dim_customers') }}
)

select
    customer_id,
    company_name,
    region,
    segment,
    signup_date
from source
