with covid_epidemiology_ab1 as (

    select
    _airbyte_ab_id,
    json_extract(_airbyte_data, '$.key') as {{ adapter.quote('key') }},
    json_extract(_airbyte_data, '$.date')  as {{ adapter.quote('date') }},
    json_extract(_airbyte_data, '$.new_tested')  as new_tested,
    json_extract(_airbyte_data, '$.new_deceased')  as new_deceased,
    json_extract(_airbyte_data, '$.total_tested')  as total_tested,
    json_extract(_airbyte_data, '$.total_confirmed')  as total_confirmed,
    json_extract(_airbyte_data, '$.new_confirmed')  as new_confirmed

from `albert_1mo_net`.`_airbyte_raw_covid_covid_epidemiology`

)


-- Final base SQL model
select
    *
from covid_epidemiology_ab1




