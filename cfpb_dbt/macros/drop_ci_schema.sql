{% macro drop_ci_schema() %}
  {% do run_query("DROP SCHEMA IF EXISTS " ~ target.catalog ~ "." ~ target.schema ~ " CASCADE") %}
  {{ log("Dropped " ~ target.catalog ~ "." ~ target.schema, info=True) }}
{% endmacro %}