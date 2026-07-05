require "test_helper"

class KanjisControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get kanjis_index_url
    assert_response :success
  end
end
