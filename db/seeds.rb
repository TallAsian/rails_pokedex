require 'csv'

PokemonStat.delete_all
TypeName.delete_all
PokemonSize.delete_all
PokemonType.delete_all
PokemonInfo.delete_all

filename = Rails.root.join('db/pokemons.csv')

puts "Loading Pokemon from the csv file: #{filename}"

csv_data = File.read(filename)

pokemons = CSV.parse(csv_data, headers: true, encoding: "utf-8")

pokemons.each do |s|
    pokemon_stat = PokemonStat.create(hp: s["hp"], attack: s["atk"], defense: s["def"], spatk: s["spatk"], 
        spdef: s["spdef"], speed: s["speed"], total: s["total"])

    if pokemon_stat && pokemon_stat.valid?

    else
        puts "Invalid pokemon stats"
    end
puts "Created #{PokemonStat.count} Pokemon stats"
end