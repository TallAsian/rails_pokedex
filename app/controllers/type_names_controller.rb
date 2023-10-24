class TypeNamesController < ApplicationController
  def index
    @type_name = TypeName.all
  end

  def show
    @pokemon_infos = PokemonInfo.all
    @type_name = TypeName.find(params[:id])
  end
end
