with 

src_budget as (

    select * from {{ source('google_sheets', 'budget') }}

),

renamed_casted as (

    select
        _row,
        quantity,
        month,
        product_id,
        _fivetran_synced

    from src_budget

)

select * from renamed_casted
