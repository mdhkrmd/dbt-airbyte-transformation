with source as (

    select * from {{ source('chinook', 'Customer') }}

),

renamed as (

    select
        "CustomerId"      as customer_id,
        "FirstName"       as first_name,
        "LastName"        as last_name,
        "Country"         as country,
        "City"            as city,
        "Email"           as email
    from source

)

select * from renamed
