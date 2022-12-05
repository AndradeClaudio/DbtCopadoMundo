with 
    source_wc_forecasts as 
    (
    select  cast (TIMESTAMP(forecast_timestamp) as datetime) as hora_previsao
            , cast (team as string) as time
            , cast (group as string) as grupo
            , cast (spi as numeric) as spi 
            , cast (global_o as numeric) as global_o
            , cast (global_d  as numeric) as globa_d
            , cast (sim_wins as numeric) as vitorias
            , cast (sim_ties as numeric) as empates
            , cast (sim_losses as numeric) as derrotas
            , cast (sim_goal_diff as numeric) as diferenca_de_goas
            , cast (goals_scored as numeric) as gols_realizados
            , cast (goals_against as numeric) as gols_sofridos
            , cast (group_1 as numeric) as posicao_1
            , cast (group_2 as numeric) as posicao_2
            , cast (group_3 as numeric) as posicao_3
            , cast (group_4 as numeric) as posicao_4
            , cast (make_round_of_16 as numeric) as chegar_na_oitava_de_finais
            , cast (make_quarters as numeric) as chegar_na_quarta_de_finais
            , cast (make_semis as numeric) as chegar_na_semi_final
            , cast (make_final as numeric) as chegar_na_final
            , cast (win_league as numeric) as vencer_liga
            --, cast (timestamp as date) as hora_atualizacao
    from {{source('base','wc_forecasts')}}
    )

select * 
from source_wc_forecasts