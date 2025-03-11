require "test_helper"

class AnalysesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get analyses_index_url
    assert_response :success
  end

  test "should get new" do
    get analyses_new_url
    assert_response :success
  end

  test "should get create" do
    get analyses_create_url
    assert_response :success
  end

  test "should get show" do
    get analyses_show_url
    assert_response :success
  end

  test "should get edit" do
    get analyses_edit_url
    assert_response :success
  end

  test "should get update" do
    get analyses_update_url
    assert_response :success
  end

  test "should get destroy" do
    get analyses_destroy_url
    assert_response :success
  end
end
