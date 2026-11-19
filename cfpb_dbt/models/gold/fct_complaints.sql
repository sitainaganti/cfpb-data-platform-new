select
    complaint_id,
    md5(company)                              as company_key,
    md5(concat_ws('|', product, sub_product)) as product_key,
    md5(concat_ws('|', issue, sub_issue))     as issue_key,
    date_received,
    date_sent_to_company,
    state,
    submitted_via,
    company_response,
    timely_response_flag,
    days_to_company,
    1 as complaint_count
from {{ ref('stg_complaints') }}