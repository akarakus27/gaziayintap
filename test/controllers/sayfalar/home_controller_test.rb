require 'test_helper'

class Sayfalar::HomeControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get sayfalar_home_index_url
    assert_response :success
  end

end
