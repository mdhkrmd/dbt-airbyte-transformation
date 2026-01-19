with source as (

    select * from {{ source('chinook', 'Invoice') }}

),

renamed as (

    select
        "InvoiceId"       as invoice_id,
        "CustomerId"      as customer_id,
        "InvoiceDate"     as invoice_date,
        "BillingCountry"  as billing_country,
        "Total"           as total_amount
    from source

)

select * from renamed
