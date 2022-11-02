{{ config( 
        schema = 'SMART_FACTORY_TEST_VB',
        materialization = 'table'
)}}


select 
    *,
    current_timestamp() as timest,
    '!1st source' as source
from
    eu_sustainability.SMART_FACTORY_TEST_VB.raw_parquet_data