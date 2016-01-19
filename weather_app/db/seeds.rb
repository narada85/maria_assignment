# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Temperature.create(:title => "Temperature 01", :celcius => 10, :description => "Add Test Description here.")
Temperature.create(:title => "Temperature 01", :celcius => 50, :description => "Add Test Description here.")
Temperature.create(:title => "Temperature 01", :celcius => 99, :description => "Add Test Description here.")