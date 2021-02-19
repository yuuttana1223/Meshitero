require 'test_helper'

class PostCommentsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get post_comments_new_url
    assert_response :success
  end

  test "should get create" do
    get post_comments_create_url
    assert_response :success
  end

  test "should get index" do
    get post_comments_index_url
    assert_response :success
  end

  test "should get show" do
    get post_comments_show_url
    assert_response :success
  end

  test "should get destroy" do
    get post_comments_destroy_url
    assert_response :success
  end

end
