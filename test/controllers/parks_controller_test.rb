require 'test_helper'

class ParksControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get parks_index_url
    assert_response :success
  end

  test "should get new" do
    get parks_new_url
    assert_response :success
  end

  test "should get edit" do
    get parks_edit_url
    assert_response :success
  end

  test "should get show" do
    get parks_show_url
    assert_response :success
  end

end
