class AddLocationToPokemonInfos < ActiveRecord::Migration[7.1]
  def change
    add_column :pokemon_infos, :location, :string
  end
end
