class PokemonGensController < ApplicationController
  def index
    @pokemon_gen = PokemonGen.all
  end

  def show
    @pokemon_infos = PokemonInfo.all
    @pokemon_gen = PokemonGen.find(params[:id])
  end
end
