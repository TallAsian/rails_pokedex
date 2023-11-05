require "test_helper"

class PokemonGensControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get pokemon_gens_index_url
    assert_response :success
  end

  test "should get show" do
    get pokemon_gens_show_url
    assert_response :success
  end
end
