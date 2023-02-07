{% macro generate_schema_name(custom_schema_name, node) -%}

    {%- set default_schema = target.schema -%}
    {{print ("the schema name is :" ~ custom_schema_name)}}
    {%- if custom_schema_name is none -%}
        {{print ("the schema name is :" ~ custom_schema_name)}}

        {{ default_schema }}

    {%- else -%}

       {{ custom_schema_name | trim }}

    {%- endif -%}

{%- endmacro %}