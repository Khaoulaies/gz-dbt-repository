with 

source as (

    select * from {{ source('gz_raw_data', 'gz_raw_ship') }}

),

renamed as (

    select
        orders_id,
          shipping_fee,
          logcost,
          CAST(ship_cost AS INT64) AS ship_cost

    from source

)

select * from renamed