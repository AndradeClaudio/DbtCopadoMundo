with
    times as (
        select DISTINCT time, grupo
        from {{ ref('stg_base__previsoes') }}
    )

    , transformed as (
        select
            row_number() over (order by time) as sk_time
            , time
            , grupo
        from times
    )

select *
from transformed