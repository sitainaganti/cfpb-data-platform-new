select distinct
    md5(concat_ws('|', product, sub_product)) as product_key,
    product,
    sub_product
from {{ ref('stg_complaints') }}