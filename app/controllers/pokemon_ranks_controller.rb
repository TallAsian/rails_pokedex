class PokemonRanksController < ApplicationController
  def index
    @pokemon_rank = PokemonRank.all
  end

  def show
    @pokemon_rank = PokemonRank.find(params[:id])
    @pokemon_infos = @pokemon_rank.pokemon_info.paginate(page: params[:page], per_page: 9)
  end
end
