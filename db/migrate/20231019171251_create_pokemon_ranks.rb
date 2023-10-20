class CreatePokemonRanks < ActiveRecord::Migration[7.1]
  def change
    create_table :pokemon_ranks do |t|
      t.string :name

      t.timestamps
    end
  end
end
