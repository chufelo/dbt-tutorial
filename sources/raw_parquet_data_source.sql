select
    *
from 
--    eu_sustainability.smart_factory_test_vb.raw_parquet_data
    {{ source('smart_factory_test_vb', 'raw_parquet_data') }}