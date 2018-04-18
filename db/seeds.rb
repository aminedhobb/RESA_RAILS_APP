# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
hotels = [
  {
    name:         'Hotel Movenpick Casablanca',
    stars:      5,
    address:  'Avenue Hassan II, Casablanca',
    user: current_user
  },
  {
    name:         'Hyatt Regency Casablanca',
    stars:      5,
    address:  'Place des Nations Unies, Casablanca 20000',
  },
  {
    name:         'Kenzi Basma Hotel',
    stars:      4,
    address:  'Avenue Moulay Hassan 1er, Casablanca 22000',
    user: current_user

  },
  {
    name:         'Hotel Suisse',
    stars:      4,
    address:  'Boulevard De La Corniche, ain diab، Casablanca 20600',
    user: current_user

  },
  {
    name:         'Hotel Novotel Casablanca City Center',
    stars:      4,
    address:  'Angle Zaid Ouhmad, Rue Sidi Belyout, Casablanca 20190',
    user: current_user

  },
  {
    name:         'Rania Belmadina Hotel',
    stars:      3,
    address:  '153 Boulevard Moulay Idriss I, Casablanca 20250',
  },
  {
    name:         'Hotel Amouday',
    stars:      3,
    address:  '291, Boulevard Mohamed V, Casablanca',
  },
  {
    name:         'Hotel ibis Casa Voyageurs',
    stars:      3,
    address:  'Place De La Gare Casavoyageurs، Avenue Ba Hmad، Dar-el-Beida 20500',
  },
  {
    name:         'Hotel Al Boustane',
    stars:      2,
    address:  '73, rue Mohamed Radi Slaoui -ex Soissons, Assoukhour Assawda 20303',
  },
  {
    name:         'Hotel Volubilis',
    stars:      2,
    address:  'Rue Abdelkrim Diouri, Casablanca 20250',
  },
  {
    name:         'Sofitel Casablanca Tour Blanche',
    stars:      5,
    address:  'Rue Sidi Belyout, Casablanca 20000',
  },
]
Hotel.create!(hotels)
puts "Finished!"
