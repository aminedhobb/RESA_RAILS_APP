# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Cleaning database...'
Hotel.destroy_all

reda = User.find_by(email:'batch118@lewagon.org')

hotels = [
  {
    name:         'Hotel Movenpick Casablanca',
    stars:      5,
    address:  'Avenue Hassan II, Casablanca',
    user_id: reda.id
  },
  {
    name:         'Hyatt Regency Casablanca',
    stars:      5,
    address:  'Place des Nations Unies, Casablanca 20000',
    user_id: reda.id
  },
  {
    name:         'Kenzi Basma Hotel',
    stars:      4,
    address:  'Avenue Moulay Hassan 1er, Casablanca 22000',

    user_id: reda.id
  },
  {
    name:         'Hotel Suisse',
    stars:      4,
    address:  'Boulevard De La Corniche, ain diab، Casablanca 20600',

    user_id: reda.id
  },
  {
    name:         'Hotel Novotel Casablanca City Center',
    stars:      4,
    address:  'Angle Zaid Ouhmad, Rue Sidi Belyout, Casablanca 20190',
    user: current_user
    user_id: reda.id
  },
  {
    name:         'Rania Belmadina Hotel',
    stars:      3,
    address:  '153 Boulevard Moulay Idriss I, Casablanca 20250',
    user_id: reda.id
  },
  {
    name:         'Hotel Amouday',
    stars:      3,
    address:  '291, Boulevard Mohamed V, Casablanca',
    user_id: reda.id
  },
  {
    name:         'Hotel ibis Casa Voyageurs',
    stars:      3,
    address:  'Place De La Gare Casavoyageurs، Avenue Ba Hmad، Dar-el-Beida 20500',
    user_id: reda.id
  },
  {
    name:         'Hotel Al Boustane',
    stars:      2,
    address:  '73, rue Mohamed Radi Slaoui -ex Soissons, Assoukhour Assawda 20303',
    user_id: reda.id
  },
  {
    name:         'Hotel Volubilis',
    stars:      2,
    address:  'Rue Abdelkrim Diouri, Casablanca 20250',
    user_id: reda.id
  },
  {
    name:         'Sofitel Casablanca Tour Blanche',
    stars:      5,
    address:  'Rue Sidi Belyout, Casablanca 20000',
    user_id: reda.id
  },
  {
    name:         'Es Saadi Marrakech',
    stars:      5,
    address:  'Rue Ibrahim El Mazini, Marrakesh 40000',
    user_id: reda.id
  },
  {
    name:         'Mogador KASBAH - Hôtel & Spa',
    stars:      4,
    address:  ' Avenue Mehdi Ben Barka, Marrakech',
    user_id: reda.id
  },
  {
    name:         'Murano Resort Marrakech Hôtel',
    stars:      4,
    address:  'Douar Abiad, la palmeraie 13172 , Marrakech-Royaume du Maroc، Marrakesh 44000',
    user_id: reda.id
  },
  {
    name:         'Hôtel Almas',
    stars:      3,
    address:  'Boulevard Moulay Rachid, Marrakech 40000',
    user_id: reda.id
  },
  {
    name:         'Riad Lotus Privilège',
    stars:      3,
    address:  '9 sidi ali ben hamdouch, Dar El Bacha، Marrakesh 40000',
    user_id: reda.id
  },
  {
    name:         'Hotel Club Le Mirage Tanger',
    stars:      5,
    address:  "Route des Grottes d'Hercule, Tanger 2198",
    user_id: reda.id
  },
  {
    name:         'Hôtel la Tour Hassan Palace',
    stars:      5,
    address:  '26, Avenue Chellah B.P. 14، Rabat 10000',
    user_id: reda.id
  },
  {
    name:         'Hôtel Menzeh Zalagh',
    stars:      4,
    address:  '10 Rue Mohammed Diouri, Fes 30000',
    user_id: reda.id
  }
]
Hotel.create!(hotels)
puts "Finished!"
