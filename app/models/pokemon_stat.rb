class PokemonStat < ApplicationRecord
    has_many :pokemon_infos

    validates :total, :hp, :attack, :defense, :spatk, :spdef, :speed, presence: true
    validates :total, :hp, :attack, :defense, :spatk, :spdef, :speed, numericality: {only_integers: true}
    validates :hp, :attack, :defense, :spatk, :spdef, :speed, {less_than: :total}
end
