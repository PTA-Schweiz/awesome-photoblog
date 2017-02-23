require 'test_helper'

class PhotoPostsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get photo_posts_index_url
    assert_response :success
  end

  test "should get show" do
    get photo_posts_show_url
    assert_response :success
  end

  test "should get create" do
    get photo_posts_create_url
    assert_response :success
  end

  test "should get new" do
    get photo_posts_new_url
    assert_response :success
  end

end
