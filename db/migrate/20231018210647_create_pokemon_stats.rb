class CreatePokemonStats < ActiveRecord::Migration[7.1]
  def change
    create_table :pokemon_stats do |t|
      t.integer :total
      t.integer :hp
      t.integer :attack
      t.integer :defense
      t.integer :spatk
      t.integer :spdef
      t.integer :speed

      t.timestamps
    end
  end
end
