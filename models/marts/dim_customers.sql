select
    "customer_id",
    "first_name",
    "last_name",
    "country",
    "city",
    "email"
from {{ ref('stg_customers') }}
