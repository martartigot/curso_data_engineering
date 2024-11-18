with 

src_promo as (

    select * from {{ source('sql_server_dbo', 'promos') }}

),

renamed_casted as (

    select
        promo_id,
        discount,
        status,
        _fivetran_deleted,
        _fivetran_synced

    from src_promo

)

select * from renamed_casted
