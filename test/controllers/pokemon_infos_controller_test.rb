require "test_helper"

class PokemonInfosControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get pokemon_infos_index_url
    assert_response :success
  end

  test "should get show" do
    get pokemon_infos_show_url
    assert_response :success
  end
end
