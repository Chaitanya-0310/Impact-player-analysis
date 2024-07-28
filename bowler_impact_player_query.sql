-- bowler impact player over level
select 
	match_id,inning,batting_team,bowling_team,bowler,over,
	sum(total_runs) as total_runs_given,
	sum(is_wicket) as total_wickets
from impact_player_analysis.ball_by_ball bbb
left join impact_player_analysis.matches ma on ma.id = bbb.match_id
group by 1,2,3,4,5,6
order by match_id
