require 'test_helper'

class HomeControllerTest < ActionController::TestCase
  test "should get park" do
    get :park
    assert_response :success
  end

end
