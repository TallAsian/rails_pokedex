class CreatePokemonTypes < ActiveRecord::Migration[7.1]
  def change
    create_table :pokemon_types do |t|
      t.references :pokemon_infos, null: false, foreign_key: true
      t.references :type_names, null: false, foreign_key: true
      t.timestamps
    end
  end
end
