select
    complaint_id,
    date_received,
    date_sent_to_company,
    coalesce(company, 'UNKNOWN')                      as company,
    coalesce(product, 'UNKNOWN')                      as product,
    coalesce(sub_product, 'UNKNOWN')                  as sub_product,
    coalesce(issue, 'UNKNOWN')                        as issue,
    coalesce(sub_issue, 'UNKNOWN')                    as sub_issue,
    coalesce(state, 'UNKNOWN')                        as state,
    zip_code,
    coalesce(submitted_via, 'UNKNOWN')                as submitted_via,
    coalesce(company_response_to_consumer, 'UNKNOWN') as company_response,
    company_public_response,
    tags,
    timely_response_flag,
    days_to_company,
    load_ts
from {{ source('silver', 'silver_complaints') }}