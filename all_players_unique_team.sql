-- get all bowlers
with bowlers as(
	select match_id,bowling_team as team,bowler as player,season from impact_player_analysis.ball_by_ball bbb
	left join impact_player_analysis.matches ma on bbb.match_id = ma.id
	group by 1,2,3,4
	order by season 
),

-- get all batters
batters as (
	select match_id,batting_team as team,batter as player,season from impact_player_analysis.ball_by_ball bbb  
	left join impact_player_analysis.matches ma on bbb.match_id = ma.id
	group by 1,2,3,4
	order by season
)

-- get all players
select * from batters 
union 
select * from  bowlers 
order by season