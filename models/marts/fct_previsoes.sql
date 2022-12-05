WITH 
    TIMES AS (
        SELECT *
            FROM {{ref('dim_times')}}
        )
    , PREVISOES AS 
        (SELECT  TIME
                , HORA_PREVISAO
                , CHEGAR_NA_OITAVA_DE_FINAIS 
                , CHEGAR_NA_QUARTA_DE_FINAIS 
                , CHEGAR_NA_SEMI_FINAL 
                , CHEGAR_NA_FINAL 
                , VENCER_LIGA 
            FROM {{ref('stg_base__previsoes')}} 
        )

SELECT  DT.SK_TIME  AS SK_TIME
    , CHEGAR_NA_OITAVA_DE_FINAIS 
    , CHEGAR_NA_QUARTA_DE_FINAIS 
    , CHEGAR_NA_SEMI_FINAL 
    , CHEGAR_NA_FINAL 
    , VENCER_LIGA 
    FROM PREVISOES STG
    INNER JOIN TIMES DT ON DT.TIME=STG.TIME

    