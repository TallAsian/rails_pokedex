class PokemonType < ApplicationRecord
  belongs_to :pokemon_info
  belongs_to :type_name
end
