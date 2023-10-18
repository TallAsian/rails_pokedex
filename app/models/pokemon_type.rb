class PokemonType < ApplicationRecord
  belongs_to :pokemon_infos
  belongs_to :type_names
end
