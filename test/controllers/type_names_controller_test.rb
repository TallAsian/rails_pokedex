require "test_helper"

class TypeNamesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get type_names_index_url
    assert_response :success
  end

  test "should get show" do
    get type_names_show_url
    assert_response :success
  end
end
