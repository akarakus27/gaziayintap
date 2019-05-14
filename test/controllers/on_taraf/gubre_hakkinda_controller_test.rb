require 'test_helper'

class OnTaraf::GubreHakkindaControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get on_taraf_gubre_hakkinda_index_url
    assert_response :success
  end

end
