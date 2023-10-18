class PokemonSize < ApplicationRecord
    has_many :pokemon_infos

    validates :height, :weight, presence: true
    validates :height, :weight, numericality: {only_integers: true}
end
