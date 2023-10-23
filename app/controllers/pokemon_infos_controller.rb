class PokemonInfosController < ApplicationController
  def index
    @pokemon_infos = PokemonInfo.all
  end

  def show
    @pokemon_info = PokemonInfo.find(params[:id])
    @pokemon_gen = PokemonGen.find_by(id: @pokemon_info.pokemon_gen_id)
    @pokemon_rank = PokemonRank.find_by(id: @pokemon_info.pokemon_rank_id)
  end
end
