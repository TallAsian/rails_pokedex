class CreatePokemonInfos < ActiveRecord::Migration[7.1]
  def change
    create_table :pokemon_infos do |t|
      t.string :name
      t.text :description
      t.string :rank
      t.string :generation
      t.references :pokemon_stats, null: false, foreign_key: true
      t.references :pokemon_sizes, null: false, foreign_key: true

      t.timestamps
    end
  end
end
