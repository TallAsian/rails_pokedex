class PokemonInfo < ApplicationRecord
  belongs_to :pokemon_stat
  belongs_to :pokemon_rank
  belongs_to :pokemon_gen

  has_many :pokemon_type

  validates :name, :description, :height, :weight, presence: true
  validates :name, uniqueness: true
end
