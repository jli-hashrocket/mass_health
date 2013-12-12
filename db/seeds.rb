# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require 'csv'
require 'pry-rails'

def sanitize(num)
  num.gsub(/\D/,'')
end

datafile = Rails.root + "db/data/mass_health_data.csv"
CSV.foreach(datafile, headers:true) do |row|
  TownHealthRecord.create(
    geography:                                          row['Geography'],
    total_population_2005:                              sanitize(row['total pop, year 2005']).to_i,
    age_0_19_2005:                                      sanitize(row['age 0-19, year 2005']).to_i,
    age_65plus_2005:                                    sanitize(row['age 65+, year 2005']).to_i,
    per_capita_income_2000:                             sanitize(row['Per Capita Income, year 2000']).to_f,
    persons_living_below_200_percent_poverty_2000:      sanitize(row['Persons Living Below 200% Poverty, year 2000 ']).to_i,
    percent_persons_below_200_poverty_2000:             sanitize(row['% all Persons Living Below 200% Poverty Level, year 2000']).to_f,
    percent_adequacy_prenatal_care:                     sanitize(row['% adequacy prenatal care (kotelchuck)']).to_f,
    percent_c_section_deliveries_2005_2008:             sanitize(row['% C-section deliveries, 2005-2008']).to_f,
    number_of_infant_deaths_2005_2008:                  sanitize(row['Number of infant deaths, 2005-2008']).to_i,
    infant_mortality_rate_2005_2008:                    sanitize(row['Infant mortality rate (deaths per 1000 live births), 2005-2008']).to_f,
    percent_low_birthweight_2005_2008:                  sanitize(row['% low birthweight 2005-2008']).to_f,
    percent_multiple_births_2005_2008:                  sanitize(row['% multiple births, 2005-2008']).to_f,
    percent_publicly_financed_prenatal_care_2005_2008:  sanitize(row['% publicly financed prenatal care, 2005-2008']).to_f,
    percent_teen_births_2005_2008:                      sanitize(row['% teen births, 2005-2008']).to_f,
    created_at:                                         row['created_at'],
    updated_at:                                         row['updated_at']
    )
end

