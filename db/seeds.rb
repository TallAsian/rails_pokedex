require 'csv'

PokemonStat.delete_all
PokemonSize.delete_all
TypeName.delete_all
PokemonType.delete_all
PokemonInfo.delete_all

filename = Rails.root.join('db/pokemons.csv')

puts "Loading Pokemon from the csv file: #{filename}"

csv_data = File.read(filename)

pokemons = CSV.parse(csv_data, headers: true, encoding: "utf-8")

pokemons.each do |p|

    pokemon_stat = PokemonStat.find_or_create_by(
        hp: p["hp"], 
        attack: p["atk"], 
        defense: p["def"], 
        spatk: p["spatk"], 
        spdef: p["spdef"], 
        speed: p["speed"], 
        total: p["total"]
    )

    pokemon_size = PokemonSize.find_or_create_by(
        height: p["height"],
        weight: p["weight"]
    )

    if pokemon_stat && pokemon_stat.valid?
        if pokemon_size && pokemon_size.valid?
            stat_id = 
            pokemon_stats = PokemonStat.where(:id => 'id').first
            pokemon_sizes = PokemonSize.where(:id => 'id').first
            pokemon_info = PokemonInfo.create(
                name: p["name"],
                description: p["desc"],
                rank: p["rank"],
                generation: p["generation"]
            )
            
            all_types = p["type2"].split(",").map(&:strip)

            all_types.each do |type_name|
                type = TypeName.find_or_create_by(name: type_name)

                PokemonType.create(pokemon_info:, type:)
            end
        else
            puts "Invalid pokemon_sizes"
        end
    else
        puts "Invalid pokemon stats"
    end
end
puts "Created #{PokemonStat.count} Pokemon stats"
puts "Created #{PokemonSize.count} Pokemon sizes"
puts "Created #{TypeName.count} Pokemon types"