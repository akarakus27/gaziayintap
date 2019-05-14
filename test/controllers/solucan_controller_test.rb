require 'test_helper'

class SolucanControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get solucan_index_url
    assert_response :success
  end

end
