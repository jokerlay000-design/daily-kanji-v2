require "test_helper"

class PostssControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get postss_new_url
    assert_response :success
  end

  test "should get create" do
    get postss_create_url
    assert_response :success
  end
end
