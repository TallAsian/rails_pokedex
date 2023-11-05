class PokemonTypesController < ApplicationController
  def index
  end

  def show
    @pokemon_types = PokemonType.find(params[:id])
    @pokemon_type = PokemonType.where(type_name_id: @pokemon_types.type_name_id).paginate(page: params[:page], per_page: 9)
  end
end
