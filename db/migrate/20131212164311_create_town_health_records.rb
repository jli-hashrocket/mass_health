class CreateTownHealthRecords < ActiveRecord::Migration
  def change
    create_table :town_health_records do |t|
      t.string :geography
      t.integer :total_population_2005
      t.integer :age_0_19_2005
      t.integer :age_65plus_2005
      t.decimal :per_capita_income_2000
      t.decimal :persons_living_below_200_percent_poverty_2000
      t.decimal :percent_persons_below_200_poverty_2000
      t.decimal :percent_adequacy_prenatal_care
      t.decimal :percent_c_section_deliveries_2005_2008
      t.integer :number_of_infant_deaths_2005_2008
      t.decimal :infant_mortality_rate_2005_2008
      t.decimal :percent_low_birthweight_2005_2008
      t.decimal :percent_multiple_births_2005_2008
      t.decimal :percent_publicly_financed_prenatal_care_2005_2008
      t.decimal :percent_teen_births_2005_2008

      t.timestamps
    end
  end
end
