class PokemonInfo < ApplicationRecord
  belongs_to :pokemon_stat
  belongs_to :pokemon_rank
  belongs_to :pokemon_gen
end
