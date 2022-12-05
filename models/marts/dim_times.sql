WITH
    TIMES AS (
        SELECT DISTINCT TIME, GRUPO
        FROM {{ ref('stg_base__previsoes') }}
    )

    , TRANSFORMED AS (
        SELECT
            ROW_NUMBER() OVER (ORDER BY TIME) AS SK_TIME
            , TIME
            , GRUPO
        FROM TIMES
    )

SELECT *
FROM TRANSFORMED

