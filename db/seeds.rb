# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Creating restaurants...'
Restaurant.create!({
                     name: "Le Dindon en Laisse",
                     address: "18 Rue Beautreillis, 75004 Paris, France"
                   })
Restaurant.create!({
                     name: "Neuf et Voisins",
                     address: "Van Arteveldestraat 1, 1000 Brussels, Belgium"
                   })
puts 'Finished!'