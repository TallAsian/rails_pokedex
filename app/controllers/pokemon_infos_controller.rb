class PokemonInfosController < ApplicationController
  def index
    @pokemon_infos = PokemonInfo.includes(:pokemon_gen).all
  end

  def show
    @pokemon_info = PokemonInfo.find(params[:id])
  end
end
