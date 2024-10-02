# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
# db/seeds.rb

# Efface toutes les excuses existantes avant de recréer de nouvelles excuses
Excuse.destroy_all

part1s = [
  "Mon chien a mangé",
  "J'étais coincé dans un embouteillage à cause de",
  "Mon réveil n'a pas sonné à cause de",
  "J'ai accidentellement renversé mon café sur",
  "Je me suis fait kidnapper par",
  "Ma voiture a été téléportée par",
  "Mon ordinateur a explosé à cause de"
]

part2s = [
  "un alien en colère",
  "une attaque de canards",
  "un orage de grêle gigantesque",
  "une invasion de robots",
  "une troupe de clowns",
  "un troupeau de chèvres sauvages",
  "un panda ninja"
]

part3s = [
  "et j'ai dû courir pendant des heures.",
  "et je ne pouvais pas m'en sortir.",
  "et j'ai dû faire demi-tour.",
  "et j'ai tout perdu en route.",
  "et c'était vraiment impossible d'arriver à temps.",
  "et je n'ai jamais vu ça auparavant.",
  "et j'ai failli y laisser ma peau."
]

# Génère des excuses en combinant les différentes parties
10.times do
  Excuse.create!(
    category: "Générale",
    part1: part1s.sample,
    part2: part2s.sample,
    part3: part3s.sample
  )
end

puts "10 excuses amusantes ont été générées avec succès !"
