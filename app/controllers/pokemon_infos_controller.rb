class PokemonInfosController < ApplicationController
  def index
    @pokemon_infos = PokemonInfo.page(params[:page]).per(9)
  end

  def show
    @pokemon_info = PokemonInfo.find(params[:id])
    @pokemon_gen = PokemonGen.find_by(id: @pokemon_info.pokemon_gen_id)
    @pokemon_rank = PokemonRank.find_by(id: @pokemon_info.pokemon_rank_id)
    @pokemon_type = PokemonType.where(pokemon_info_id: @pokemon_info.id)
    @pokemon_stat = PokemonStat.find_by(id: @pokemon_info.pokemon_stat_id)
    @location = @pokemon_info.location
    google_maps_api_key = 'AIzaSyA-_KACj5WDD-QkcDt8vDigOnd_J_WJq4A'
    @static_map_url = "https://maps.googleapis.com/maps/api/staticmap?center=#{@location}&zoom=15&size=600x400&key=#{google_maps_api_key}"
  end

  def search
    wildcard_search = "%#{params[:keywords]}%"
    gen_id = params[:search][:gen_id]

    if gen_id.present?
      @pokemon_infos = PokemonInfo.where("name LIKE ? AND pokemon_gen_id = ?", wildcard_search, gen_id)
    else
      @pokemon_infos = PokemonInfo.where("name LIKE ?", wildcard_search)
    end

    @pokemon_infos = @pokemon_infos.paginate(page: params[:page], per_page: 9)
  end
end
