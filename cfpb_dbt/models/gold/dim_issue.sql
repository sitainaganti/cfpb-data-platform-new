select distinct
    md5(concat_ws('|', issue, sub_issue)) as issue_key,
    issue,
    sub_issue
from {{ ref('stg_complaints') }}