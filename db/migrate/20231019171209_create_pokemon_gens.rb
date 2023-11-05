class CreatePokemonGens < ActiveRecord::Migration[7.1]
  def change
    create_table :pokemon_gens do |t|
      t.string :name

      t.timestamps
    end
  end
end
