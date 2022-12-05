WITH 
    TIMES AS (
        SELECT *
            FROM {{ref('dim_equipes')}}
        )
    , PREVISOES AS 
        (SELECT  EQUIPE
                , DATA_PREVISAO
                , CHEGAR_NA_OITAVA_DE_FINAIS 
                , CHEGAR_NA_QUARTA_DE_FINAIS 
                , CHEGAR_NA_SEMI_FINAL 
                , CHEGAR_NA_FINAL 
                , VENCER_LIGA 
            FROM {{ref('stg_base__previsoes')}} 
        )

SELECT  DT.SK_EQUIPE  AS SK_EQUIPE
    , DATA_PREVISAO
    , CHEGAR_NA_OITAVA_DE_FINAIS 
    , CHEGAR_NA_QUARTA_DE_FINAIS 
    , CHEGAR_NA_SEMI_FINAL 
    , CHEGAR_NA_FINAL 
    , VENCER_LIGA 
    FROM PREVISOES STG
    INNER JOIN EQUIPES DT ON DT.EQUIPE=STG.EQUIPE

    