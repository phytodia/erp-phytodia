require "test_helper"

class EchantillonsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get echantillons_index_url
    assert_response :success
  end

  test "should get new" do
    get echantillons_new_url
    assert_response :success
  end

  test "should get create" do
    get echantillons_create_url
    assert_response :success
  end

  test "should get show" do
    get echantillons_show_url
    assert_response :success
  end

  test "should get edit" do
    get echantillons_edit_url
    assert_response :success
  end

  test "should get update" do
    get echantillons_update_url
    assert_response :success
  end

  test "should get destroy" do
    get echantillons_destroy_url
    assert_response :success
  end
end
