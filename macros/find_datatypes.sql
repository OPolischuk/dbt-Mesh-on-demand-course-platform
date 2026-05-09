{% macro find_datatypes(model) %}
    {% set relation = ref(model) %}
    {% set cols = adapter.get_columns_in_relation(relation) %}
    {% for col in cols %}
        {{ log("  - name: " ~ col.name | lower, info=true) }}
        {{ log("    data_type: " ~ col.dtype | lower, info=true) }}
    {% endfor %}
{% endmacro %}