# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
b = Hash.new
l = Hash.new
e = Hash.new
Building.delete_all
Location.delete_all
Entrance.delete_all
Path.delete_all

b['SSC'] = Building.create!(
  name: 'Carl J. Shapiro Science Center',
  description: 'The Carl J. Shapiro Science Center features 175,000 square feet of biology and chemistry teaching and research lab space overlooking the Brandeis campus. The center houses the university’s National Center for Behavioral Genomics. Seminar and conference areas and an atrium with study space round out the Shapiro Science Center’s interior.',
  photo: 'buildings/shapiro-science-1.jpg'
)
l['SSC_e1'] = Location.create!(
  latitude: 42.36583329,
  longitude: -71.25857279,
  loc_type: 'entrance'
)
Entrance.create!(
  building_id: b['SSC'].id,
  location_id: l['SSC_e1'].id
)

b['Volen'] = Building.create!(
  name: 'Volen National Center for Complex Systems',
  description: 'Primarily a research facility, the Volen National Center for Complex Systems is home to an interdisciplinary group of neuroscientists and the Computer Science department. The center includes office, classrooms and lab space.',
  photo: 'buildings/Volen.jpg'
)
l['Volen_e1'] = Location.create!(
  latitude: 42.36710161,
  longitude: -71.25910923,
  loc_type: 'entrance'
)
Entrance.create!(
  building_id: b['Volen'].id,
  location_id: l['Volen_e1'].id
)


Path.create!(
  description: 'Assemble a catapult, set the right angle and launch yourself from SSC to Volen.',
  distance: 1,
  start_location_id: l['SSC_e1'].id,
  end_location_id: l['Volen_e1'].id,
  direction: 0
)
Path.create!(
  description: 'Go back to SSC',
  distance: 1,
  start_location_id: l['Volen_e1'].id,
  end_location_id: l['SSC_e1'].id,
  direction: 180
)

User.delete_all
User.create!(
    name: 'admin',
    password: 'admin',
    password_confirmation: 'admin'
    )
# Import from a csv file if there are too many records to seed