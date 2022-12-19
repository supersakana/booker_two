# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Airport.create(code: 'ATL', location: 'Atlanta, Georgia')
Airport.create(code: 'ORF', location: 'Norfolk, Virginia')

today = Date.today.strftime('%Y-%m-%d')
tomorow = (Date.today + 1).strftime('%Y-%m-%d')

(today..tomorow).to_a.each do |d|
  ['8:00AM', '12:00PM', '6:00PM'].each do |t|
    Flight.create(from_id: 1, to_id: 2, date: d, time: t)
    Flight.create(from_id: 2, to_id: 1, date: d, time: t)
  end
end
