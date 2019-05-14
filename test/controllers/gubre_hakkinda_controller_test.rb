require 'test_helper'

class GubreHakkindaControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get gubre_hakkinda_index_url
    assert_response :success
  end

end
