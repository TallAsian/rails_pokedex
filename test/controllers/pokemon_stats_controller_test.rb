require "test_helper"

class PokemonStatsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get pokemon_stats_index_url
    assert_response :success
  end

  test "should get show" do
    get pokemon_stats_show_url
    assert_response :success
  end
end
