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

-- to create team mapping 
create table
impact_player_analysis.ipl_team_mapping(
	team_name varchar(40),
	dup_team_name varchar(40)
)

grant all on impact_player_analysis.ipl_team_mapping to shivam,tanmay,chaitanya,smit
	
insert into impact_player_analysis.ipl_team_mapping(team_name,dup_team_name)
values
('Deccan Chargers','Deccan Chargers'),
('Gujarat Lions','Gujarat Lions'),
('Delhi Capitals','Delhi Capitals'),
('Sunrisers Hyderabad','Sunrisers Hyderabad'),
('Gujarat Titans','Gujarat Titans'),
('Kolkata Knight Riders','Kolkata Knight Riders'),
('Rising Pune Supergiants','Rising Pune Supergiants'),
('Lucknow Super Giants','Lucknow Super Giants'),
('Pune Warriors','Pune Warriors'),
('Royal Challengers Bangalore','Royal Challengers Bangalore'),
('Kochi Tuskers Kerala','Kochi Tuskers Kerala'),
('Punjab Kings','Punjab Kings'),
('Rising Pune Supergiants','Rising Pune Supergiant'),
('Mumbai Indians','Mumbai Indians'),
('Royal Challengers Bangalore','Royal Challengers Bengaluru'),
('Chennai Super Kings','Chennai Super Kings'),
('Delhi Daredevils','Delhi Daredevils'),
('Kings XI Punjab','Kings XI Punjab'),
('Rajasthan Royals','Rajasthan Royals')