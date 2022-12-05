with 
    source_wc_forecasts as 
    (
    select  forecast_timestamp
            , team
            , group
            , spi
            , global_o
            , global_d
            , sim_wins
            , sim_ties
            , sim_losses
            , sim_goal_diff
            , goals_scored
            , goals_against
            , group_1
            , group_2
            , group_3
            , group_4
            , make_round_of_16
            , make_quarters
            , make_semis
            , make_final
            , win_league
            , timestamp
    from {{source('base','wc_forecasts')}}
    )

select * 
from source_wc_forecasts