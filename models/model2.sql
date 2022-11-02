{{ config( 
        schema = 'SMART_FACTORY_TEST_VB',
        materialization = 'table'
)}}


select 
    *,
    current_timestamp() as timest,
    '!1st source' as source
from
    raw_parquet_data