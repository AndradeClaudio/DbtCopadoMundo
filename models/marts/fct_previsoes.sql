WITH 
    TIMES AS (
        SELECT *
            FROM {{ref('dim_times')}}
        )
    , PREVISOES AS 
        (SELECT 
                , chegar_na_oitava_de_finais 
                , chegar_na_quarta_de_finais 
                , chegar_na_semi_final 
                , chegar_na_final 
                , vencer_liga 
            FROM {{ref('stg_base__previsoes')}} 
        )

SELECT  DT.sk_time  AS sk_time
    , chegar_na_oitava_de_finais 
    , chegar_na_quarta_de_finais 
    , chegar_na_semi_final 
    , chegar_na_final 
    , vencer_liga 
    FROM PREVISOES STG
    INNER JOIN TIMES DT ON DT.TIME=STG.TIME