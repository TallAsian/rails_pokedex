class CreatePokemonSizes < ActiveRecord::Migration[7.1]
  def change
    create_table :pokemon_sizes do |t|
      t.integer :height
      t.integer :weight

      t.timestamps
    end
  end
end
