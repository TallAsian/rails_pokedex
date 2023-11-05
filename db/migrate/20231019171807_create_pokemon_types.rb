class CreatePokemonTypes < ActiveRecord::Migration[7.1]
  def change
    create_table :pokemon_types do |t|
      t.references :pokemon_info, null: false, foreign_key: true
      t.references :type_name, null: false, foreign_key: true

      t.timestamps
    end
  end
end
