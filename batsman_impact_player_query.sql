-- batsman impact player match level
select match_id,inning,batting_team,bowling_team,batter,ma.target_runs,min(over) as starting_over,max(over) as ending_over,count(ball) as balls_played,
	(
	case when sum(is_wicket) >=1 
	then true
	else false
	end)
	as was_out ,  
	sum(batsman_runs) as batsman_runs,
	round((sum(batsman_runs)/count(ball))*100)
	as strike_rate
	
	from impact_player_analysis.ball_by_ball bbb
left join impact_player_analysis.matches ma on ma.id = bbb.match_id
group by 1,2,3,4,5,6

order by match_id 

