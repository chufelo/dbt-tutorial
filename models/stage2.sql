{{ config(
        materialized = 'table') 
}}


{%- set yaml_metadata -%}

source_model: 'model2'
ldts: 'timest'
rsrc: 'source'

hashed_columns: 
        customerid
    missing_columns:
        shipping_address: 'STRING'
{%- endset -%}

{%- set metadata_dict = fromyaml(yaml_metadata) -%}

{%- set source_model = metadata_dict['source_model'] -%}
{%- set ldts = metadata_dict['ldts'] -%}
{%- set rsrc = metadata_dict['rsrc'] -%}
{%- set hashed_columns = metadata_dict['hashed_columns'] -%}
{%- set missing_columns = metadata_dict['missing_columns'] -%}

{{ datavault4dbt.stage(source_model='model2',
                        ldts=ldts,
                        rsrc=rsrc,
                        hashed_columns=hashed_columns,
                        missing_columns=missing_columns) }}