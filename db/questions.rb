#What 3 towns have the highest population of citizens that are 65 years and older?
TownHealthRecord.order('age_65plus_2005 DESC').limit(3)

#What 3 towns have the highest population of citizens that are 19 years and younger?
TownHealthRecord.order('age_0_19_2005 DESC').limit(3)

#What 5 towns have the lowest per capita income?
TownHealthRecord.order('per_capita_income_2000 ASC').limit(3)

#Omitting Boston, Becket, and Beverly, what town has the highest percentage of teen births?
TownHealthRecord.where('geography NOT IN (\'Boston\',\'Becket\', \'Beverly\')').order('percent_teen_births_2005_2008 DESC')

#Omitting Boston, what town has the highest number of infant mortalities?
TownHealthRecord.where('geography NOT IN (\'Boston\')').order('infant_mortality_rate_2005_2008 DESC')

