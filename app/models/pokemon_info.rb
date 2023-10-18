class PokemonInfo < ApplicationRecord
  belongs_to :pokemon_stats
  belongs_to :pokemon_sizes
  has_many :pokemon_types
  has_many :type_names, through: :pokemon_types

  validates :name, :description, :rank, :generation, presence: true
  validates :name, uniqueness: true
end
