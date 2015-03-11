# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

## Outdoor Locations
b = Hash.new
l = Hash.new
e = Hash.new
Building.delete_all
Location.delete_all
Entrance.delete_all
# First Building
b['SSC'] = Building.create!(
  name: 'Carl J. Shapiro Science Center',
  description: 'The Carl J. Shapiro Science Center features 175,000 square feet of biology and chemistry teaching and research lab space overlooking the Brandeis campus. The center houses the university’s National Center for Behavioral Genomics. Seminar and conference areas and an atrium with study space round out the Shapiro Science Center’s interior.',
  photo: 'buildings/shapiro-science-1.jpg'
)
l['SSC_e1'] = Location.create!(
  latitude: 42.56585529,
  longitude: -71.25857279,
  loc_type: 'entrance'
)
Entrance.create!(
  building_id: b['SSC'].id,
  location_id: l['SSC_e1'].id
)
# Second Building
b['Volen'] = Building.create!(
  name: 'Volen National Center for Complex Systems',
  description: 'Primarily a research facility, the Volen National Center for Complex Systems is home to an interdisciplinary group of neuroscientists and the Computer Science department. The center includes office, classrooms and lab space.',
  photo: 'buildings/Volen.jpg'
)
l['Volen_e1'] = Location.create!(
  latitude: 42.56710161,
  longitude: -71.25910925,
  loc_type: 'entrance'
)
Entrance.create!(
  building_id: b['Volen'].id,
  location_id: l['Volen_e1'].id
)
# Third Building
b['Heller'] = Building.create!(
  name: 'Heller-Brown Building',
  description: 'The Heller-Brown Building is one of two buildings making up the Heller School for Social Policy and Management. The building holds classrooms, conference rooms, offices, a library and Geographic Information Systems lab.',
  photo: 'buildings/HellerBrown-1.jpg'
)
l['Heller_e1'] = Location.create!(
  latitude: 42.569115,
  longitude:  -71.258427,
  loc_type: 'entrance'
)
Entrance.create!(
  building_id: b['Heller'].id,
  location_id: l['Heller_e1'].id
)

# Fourth Building
b['Mandel'] = Building.create!(
  name: 'Mandel Center for the Humanities',
  description: 'The Jack, Joseph and Morton Mandel Center for the Humanities is the main facility for liberal arts education, including humanities, social sciences, literature, language and philosophy. The four-story center, made up of multiple buildings linked with an outdoor quadrangle, has a 90-seat theater/lecture hall, classrooms, seminar rooms, offices and open workstations.',
  photo: 'buildings/mandel.jpg'
)
l['Mandel_e1'] = Location.create!(
  latitude: 42.569592,
  longitude:  -71.258119,
  loc_type: 'entrance'
)
Entrance.create!(
  building_id: b['Mandel'].id,
  location_id: l['Mandel_e1'].id
)


## Outdoor paths and routes
p = Hash.new
r = Hash.new
Path.delete_all
Route.delete_all
RouteConstructor.delete_all
p[1] = Path.create!(
  description: 'Assemble a catapult, set the right angle and launch yourself from Heller to Volen.',
  distance: 1,
  start_location_id: l['Heller_e1'].id,
  end_location_id: l['Volen_e1'].id,
  direction: 0
)
r[1] = Route.create!(
  start_location_id: l['Heller_e1'].id,
  end_location_id: l['Volen_e1'].id,
  distance: 1
)
RouteConstructor.create!([
  { route_id: r[1].id,
    path_id: p[1].id,
    path_order: 1,
    turning_direction: 0
  }
])

p[2] = Path.create!(
  description: 'Go back to Heller',
  distance: 1,
  start_location_id: l['Volen_e1'].id,
  end_location_id: l['Heller_e1'].id,
  direction: 180
)
r[2] = Route.create!(
  start_location_id: l['Volen_e1'].id,
  end_location_id: l['Heller_e1'].id,
  distance: 1
)
RouteConstructor.create!([
  { route_id: r[2].id,
    path_id: p[2].id,
    path_order: 1,
    turning_direction: 0
  }
])

p[5] = Path.create!(
  description: 'Volen to Heller',
  distance: 2,
  start_location_id: l['Volen_e1'].id,
  end_location_id: l['Heller_e1'].id,
  direction: 0
)
r[5] = Route.create!(
  start_location_id: l['Volen_e1'].id,
  end_location_id: l['Heller_e1'].id,
  distance: 2
)
RouteConstructor.create!([
  { route_id: r[5].id,
    path_id: p[5].id,
    path_order: 5,
    turning_direction: 0
  }
])

p[4] = Path.create!(
  description: 'Heller to Volen',
  distance: 2,
  start_location_id: l['Heller_e1'].id,
  end_location_id: l['Volen_e1'].id,
  direction: 180
)
r[4] = Route.create!(
  start_location_id: l['Heller_e1'].id,
  end_location_id: l['Volen_e1'].id,
  distance: 2
)
RouteConstructor.create!([
  { route_id: r[4].id,
    path_id: p[4].id,
    path_order: 4,
    turning_direction: 0
  }
])

p[5] = Path.create!(
  description: 'Volen to Mandel',
  distance: 3,
  start_location_id: l['Volen_e1'].id,
  end_location_id: l['Mandel_e1'].id,
  direction: 0
)
r[5] = Route.create!(
  start_location_id: l['Volen_e1'].id,
  end_location_id: l['Mandel_e1'].id,
  distance: 3
)
RouteConstructor.create!([
  { route_id: r[5].id,
    path_id: p[5].id,
    path_order: 5,
    turning_direction: 0
  }
])

p[6] = Path.create!(
  description: 'Mandel to Volen',
  distance: 3,
  start_location_id: l['Mandel_e1'].id,
  end_location_id: l['Volen_e1'].id,
  direction: 180
)
r[6] = Route.create!(
  start_location_id: l['Mandel_e1'].id,
  end_location_id: l['Volen_e1'].id,
  distance: 3
)
RouteConstructor.create!([
  { route_id: r[6].id,
    path_id: p[6].id,
    path_order: 6,
    turning_direction: 0
  }
])

p[7] = Path.create!(
  description: 'Heller to Heller',
  distance: 4,
  start_location_id: l['Heller_e1'].id,
  end_location_id: l['Heller_e1'].id,
  direction: 0
)
r[7] = Route.create!(
  start_location_id: l['Heller_e1'].id,
  end_location_id: l['Heller_e1'].id,
  distance: 4
)
RouteConstructor.create!([
  { route_id: r[7].id,
    path_id: p[7].id,
    path_order: 7,
    turning_direction: 0
  }
])

p[8] = Path.create!(
  description: 'Heller to Heller',
  distance: 4,
  start_location_id: l['Heller_e1'].id,
  end_location_id: l['Heller_e1'].id,
  direction: 180
)
r[8] = Route.create!(
  start_location_id: l['Heller_e1'].id,
  end_location_id: l['Heller_e1'].id,
  distance: 4
)
RouteConstructor.create!([
  { route_id: r[8].id,
    path_id: p[8].id,
    path_order: 8,
    turning_direction: 0
  }
])

p[9] = Path.create!(
  description: 'Heller to Mandel',
  distance: 4,
  start_location_id: l['Heller_e1'].id,
  end_location_id: l['Mandel_e1'].id,
  direction: 0
)
r[9] = Route.create!(
  start_location_id: l['Heller_e1'].id,
  end_location_id: l['Mandel_e1'].id,
  distance: 5
)
RouteConstructor.create!([
  { route_id: r[9].id,
    path_id: p[9].id,
    path_order: 9,
    turning_direction: 0
  }
])

p[10] = Path.create!(
  description: 'Mandel to Heller',
  distance: 5,
  start_location_id: l['Mandel_e1'].id,
  end_location_id: l['Heller_e1'].id,
  direction: 180
)
r[10] = Route.create!(
  start_location_id: l['Mandel_e1'].id,
  end_location_id: l['Heller_e1'].id,
  distance: 5
)
RouteConstructor.create!([
  { route_id: r[10].id,
    path_id: p[10].id,
    path_order: 10,
    turning_direction: 0
  }
])

p[11] = Path.create!(
  description: 'Heller to Mandel',
  distance: 6,
  start_location_id: l['Heller_e1'].id,
  end_location_id: l['Mandel_e1'].id,
  direction: 0
)
r[11] = Route.create!(
  start_location_id: l['Heller_e1'].id,
  end_location_id: l['Mandel_e1'].id,
  distance: 6
)
RouteConstructor.create!([
  { route_id: r[11].id,
    path_id: p[11].id,
    path_order: 11,
    turning_direction: 0
  }
])

p[12] = Path.create!(
  description: 'Mandel to Heller',
  distance: 6,
  start_location_id: l['Mandel_e1'].id,
  end_location_id: l['Heller_e1'].id,
  direction: 180
)
r[12] = Route.create!(
  start_location_id: l['Mandel_e1'].id,
  end_location_id: l['Heller_e1'].id,
  distance: 6
)
RouteConstructor.create!([
  { route_id: r[12].id,
    path_id: p[12].id,
    path_order: 12,
    turning_direction: 0
  }
])

User.delete_all
User.create!(
    name: 'admin',
    password: 'admin',
    password_confirmation: 'admin'
    )
# Import from a csv file if there are too many records to seed