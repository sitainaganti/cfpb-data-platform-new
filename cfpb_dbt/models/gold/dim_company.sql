select distinct
    md5(company) as company_key,
    company
from {{ ref('stg_complaints') }}