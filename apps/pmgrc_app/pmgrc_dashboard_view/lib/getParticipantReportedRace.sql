select reported_race, count(reported_race) from new_participants where reported_race is not null group by reported_race order by count(reported_race) desc;
