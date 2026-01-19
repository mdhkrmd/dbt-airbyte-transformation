select
    il."invoice_line_id",
    i."invoice_id",
    i."invoice_date",
    i."customer_id",
    il."track_id",
    il."quantity",
    il."unit_price",
    il."quantity" * il."unit_price" as line_amount,
    i."billing_country"
from {{ ref('stg_invoice_lines') }} il
left join {{ ref('stg_invoices') }} i
    on il."invoice_id" = i."invoice_id"