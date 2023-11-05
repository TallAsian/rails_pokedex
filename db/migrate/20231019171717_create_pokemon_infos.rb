class CreatePokemonInfos < ActiveRecord::Migration[7.1]
  def change
    create_table :pokemon_infos do |t|
      t.string :name
      t.text :description
      t.integer :height
      t.integer :weight
      t.references :pokemon_stat, null: false, foreign_key: true
      t.references :pokemon_rank, null: false, foreign_key: true
      t.references :pokemon_gen, null: false, foreign_key: true

      t.timestamps
    end
  end
end
