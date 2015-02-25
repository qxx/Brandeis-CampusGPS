# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Building.delete_all
Building.create!(
  [ { name: 'Carl J. Shapiro Science Center',
      description: 'The Carl J. Shapiro Science Center features 175,000 square feet of biology and chemistry teaching and research lab space overlooking the Brandeis campus. The center houses the university’s National Center for Behavioral Genomics. Seminar and conference areas and an atrium with study space round out the Shapiro Science Center’s interior.',
      photo: 'buildings/shapiro-science-1.jpg',
      latitude: 42.36583329,
      longitude: -71.25857279
    },
    { name: 'Volen National Center for Complex Systems',
      description: 'Primarily a research facility, the Volen National Center for Complex Systems is home to an interdisciplinary group of neuroscientists and the Computer Science department. The center includes office, classrooms and lab space.',
      photo: 'buildings/Volen.jpg',
      latitude: 42.36710161,
      longitude: -71.25910923
    } 
  ] )

# Import from a csv file if there are too many records to seed