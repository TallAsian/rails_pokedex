class TypeName < ApplicationRecord
    has_many :pokemon_type

    validates :name, presence: true
    validates :name, uniqueness: true
end
