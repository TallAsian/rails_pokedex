class PokemonRank < ApplicationRecord
    has_many :pokemon_info

    validates :name, presence: true
    validates :name, uniqueness: true
end
