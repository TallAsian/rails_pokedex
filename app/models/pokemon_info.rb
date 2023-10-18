class PokemonInfo < ApplicationRecord
  belongs_to :pokemon_stats
  belongs_to :pokemon_sizes
end
