-- query to verify nulls --
select
    bbb.match_id,
    m.id,
    (
        case
            when bbb.match_id = m.id then 1
            else 0
        end
    ) as is_diff
from
    impact_player_analysis.ball_by_ball bbb
    join impact_player_analysis.matches m on bbb.match_id = m.id
group by
    1,
    2
order by
    3 desc NULLS FIRST