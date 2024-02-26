require "test_helper"

class HomesControllerTest < ActionDispatch::IntegrationTest
  test "should get top" do
    get homes_top_url
    assert_response :success
  end

  test "should get rails" do
    get homes_rails_url
    assert_response :success
  end

  test "should get g" do
    get homes_g_url
    assert_response :success
  end

  test "should get controller" do
    get homes_controller_url
    assert_response :success
  end

  test "should get books" do
    get homes_books_url
    assert_response :success
  end

  test "should get new" do
    get homes_new_url
    assert_response :success
  end

  test "should get index" do
    get homes_index_url
    assert_response :success
  end

  test "should get show" do
    get homes_show_url
    assert_response :success
  end

  test "should get edit" do
    get homes_edit_url
    assert_response :success
  end
end
