class PokemonGensController < ApplicationController
  def index
    @pokemon_gen = PokemonGen.all
  end

  def show
    @pokemon_gen = PokemonGen.find(params[:id])
    @pokemon_infos = @pokemon_gen.pokemon_info.paginate(page: params[:page], per_page: 9)
  end
end
