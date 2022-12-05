WITH
    TIMES AS (
        SELECT DISTINCT TIME, GRUPO
        FROM {{ REF('STG_BASE__PREVISOES') }}
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
