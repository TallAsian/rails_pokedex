class TypeName < ApplicationRecord
    has_many :pokemon_types
    has_many :pokemon_infos, through: :pokemon_types
end
