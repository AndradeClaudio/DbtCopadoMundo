with 
    source_wc_forecasts as 
    (
    select  cast (forecast_timestamp as date)
            , cast (team as string)
            , cast (group as tring
            , cast (spi
            , cast (global_o
            , cast (global_d
            , cast (sim_wins
            , cast (sim_ties
            , cast (sim_losses
            , cast (sim_goal_diff
            , cast (goals_scored
            , cast (goals_against
            , cast (group_1
            , cast (group_2
            , cast (group_3
            , cast (group_4
            , cast (make_round_of_16
            , cast (make_quarters
            , cast (make_semis
            , cast (make_final
            , cast (win_league
            , cast (timestamp
    from {{source('base','wc_forecasts')}}
    )

select * 
from source_wc_forecasts