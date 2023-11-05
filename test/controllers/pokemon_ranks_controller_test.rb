require "test_helper"

class PokemonRanksControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get pokemon_ranks_index_url
    assert_response :success
  end

  test "should get show" do
    get pokemon_ranks_show_url
    assert_response :success
  end
end
