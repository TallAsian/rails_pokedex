class PokemonTypesController < ApplicationController
  def index
  end

  def show
    @pokemon_infos = PokemonInfo.all
    @pokemon_type = PokemonType.find(params[:id])
    # @pokemon_type = PokemonType.find(params[:id])
    # @type_name = TypeName.find_by(id: @pokemon_type.type_name_id)
  end
end
