WITH
    EQUIPES AS (
        SELECT DISTINCT EQUIPE, GRUPO
        FROM {{ ref('stg_base__previsoes') }}
    )

    , TRANSFORMED AS (
        SELECT
            ROW_NUMBER() OVER (ORDER BY EQUIPE) AS SK_EQUIPE
            , EQUIPE
            , GRUPO
        FROM EQUIPES
    )

SELECT *
FROM TRANSFORMED

