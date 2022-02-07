with covid_epidemiology_ab1 as (

    select

    json_extract_scalar('_airbyte_data', 'key') as {{ adapter.quote('key') }},
    json_extract_scalar('_airbyte_data', 'date')  as {{ adapter.quote('date') }},
    json_extract_scalar('_airbyte_data', 'new_tested')  as new_tested,
    json_extract_scalar('_airbyte_data', 'new_deceased')  as new_deceased,
    json_extract_scalar('_airbyte_data', 'total_tested')  as total_tested,
    json_extract_scalar('_airbyte_data', 'new_confirmed')  as new_confirmed

from `albert_1mo_net`.`_airbyte_raw_covid_covid_epidemiology`

)


-- Final base SQL model
select
    {{ adapter.quote('key') }},
    {{ adapter.quote('date') }},
    new_tested,
    new_deceased,
    total_tested,
    new_confirmed
from covid_epidemiology_ab1




