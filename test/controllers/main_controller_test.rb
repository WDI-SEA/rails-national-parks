require 'test_helper'

class MainControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get main_index_url
    assert_response :success
  end

  test "should get park" do
    get main_park_url
    assert_response :success
  end

end
