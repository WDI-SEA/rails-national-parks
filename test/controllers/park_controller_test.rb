require 'test_helper'

class ParkControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get park_index_url
    assert_response :success
  end

  test "should get new" do
    get park_new_url
    assert_response :success
  end

  test "should get create" do
    get park_create_url
    assert_response :success
  end

  test "should get show" do
    get park_show_url
    assert_response :success
  end

  test "should get edit" do
    get park_edit_url
    assert_response :success
  end

  test "should get update" do
    get park_update_url
    assert_response :success
  end

  test "should get destroy" do
    get park_destroy_url
    assert_response :success
  end

end
