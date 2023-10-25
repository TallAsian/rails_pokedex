require 'csv'
require 'faker'

PokemonType.delete_all
PokemonInfo.delete_all
TypeName.delete_all
PokemonStat.delete_all
PokemonGen.delete_all
PokemonRank.delete_all

ActiveRecord::Base.connection.execute("DELETE FROM sqlite_sequence WHERE name='pokemon_types';")
ActiveRecord::Base.connection.execute("DELETE FROM sqlite_sequence WHERE name='pokemon_infos';")
ActiveRecord::Base.connection.execute("DELETE FROM sqlite_sequence WHERE name='type_names';")
ActiveRecord::Base.connection.execute("DELETE FROM sqlite_sequence WHERE name='pokemon_stats';")
ActiveRecord::Base.connection.execute("DELETE FROM sqlite_sequence WHERE name='pokemon_gens';")
ActiveRecord::Base.connection.execute("DELETE FROM sqlite_sequence WHERE name='pokemon_ranks';")

filename = Rails.root.join('db/pokemons.csv')

puts "Loading Pokemon from the csv file: #{filename}"

csv_data = File.read(filename)

pokemons = CSV.parse(csv_data, headers: true, encoding: "utf-8")

pokemons.each do |p|

    pokemon_stat = PokemonStat.create(
        hp: p["hp"], 
        attack: p["atk"], 
        defense: p["def"], 
        spatk: p["spatk"], 
        spdef: p["spdef"], 
        speed: p["speed"], 
        total: p["total"]
    )

    pokemon_gen = PokemonGen.find_or_create_by(
        name: p["generation"]
    )

    pokemon_rank = PokemonRank.find_or_create_by(
        name: p["rank"]
    )

    type_one = TypeName.find_or_create_by(
        name: p["type1"]
    )
    type_two = TypeName.find_or_create_by(
        name: p["type2"]
    )
    
    if pokemon_stat && pokemon_stat.valid?
        if pokemon_gen && pokemon_gen.valid?
            if pokemon_rank && pokemon_rank.valid?
                pokemon_info = PokemonInfo.find_or_create_by(
                    name: p["name"],
                    description: p["desc"],
                    height: p["height"],
                    weight: p["weight"],
                    pokemon_stat_id: pokemon_stat.id,
                    pokemon_rank_id: pokemon_rank.id,
                    pokemon_gen_id: pokemon_gen.id,
                    location: Faker::Address.full_address
                )

                pokemon_type = PokemonType.create(
                    pokemon_info_id: pokemon_info.id,
                    type_name_id: type_one.id
                )
                pokemon_type = PokemonType.create(
                    pokemon_info_id: pokemon_info.id,
                    type_name_id: type_two.id
                )
            else
                puts "Invalid Pokemon rank"
            end
        else
            puts "Invalid pokemon gen"
        end
    else
        puts "Invalid pokemon stat"
    end
end

puts "Created #{PokemonStat.count} Pokemon stats"
puts "Created #{PokemonGen.count} Pokemon gens"
puts "Created #{PokemonRank.count} Pokemon ranks"
puts "Created #{TypeName.count} Pokemon name types"
puts "Created #{PokemonInfo.count} Pokemon infos"
puts "Created #{PokemonType.count} Pokemon types"