class PokemonRanksController < ApplicationController
  def index
    @pokemon_rank = PokemonRank.all
  end

  def show
    @pokemon_infos = PokemonInfo.all
    @pokemon_rank = PokemonRank.find(params[:id])
  end
end
