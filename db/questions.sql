--What 3 towns have the highest population of citizens that are 65 years and older?
SELECT * FROM town_health_records ORDER BY age_65plus_2005 DESC LIMIT 3;

--What 3 towns have the highest population of citizens that are 19 years and younger?
SELECT * FROM town_health_records ORDER BY age_0_19_2005 DESC LIMIT 3;

--What 5 towns have the lowest per capita income?
SELECT * FROM town_health_records ORDER BY per_capita_income_2000 ASC LIMIT 3;

--Omitting Boston, Becket, and Beverly, what town has the highest percentage of teen births?
SELECT * FROM town_health_records WHERE geography NOT IN ('Boston', 'Becket', 'Beverly') ORDER BY percent_teen_births_2005_2008 DESC;

--Omitting Boston, what town has the highest number of infant mortalities?
SELECT * FROM town_health_records WHERE geography NOT IN ('Boston') ORDER BY infant_mortality_rate_2005_2008 DESC;
