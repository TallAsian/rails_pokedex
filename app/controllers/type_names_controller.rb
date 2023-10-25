class TypeNamesController < ApplicationController
  def index
    @type_name = TypeName.all
  end

  def show
    @type_name = TypeName.find(params[:id])
    @pokemon_type = PokemonType.where(type_name_id: @type_name.id).paginate(page: params[:page], per_page: 9)
  end
end
