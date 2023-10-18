class TypeName < ApplicationRecord
    has_many :pokemon_types
    has_many :pokemon_infos, through: :pokemon_types

    validates :name, presence: true
    validates :name, uniqueness: true
end
