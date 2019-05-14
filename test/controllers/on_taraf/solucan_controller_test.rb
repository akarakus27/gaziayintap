require 'test_helper'

class OnTaraf::SolucanControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get on_taraf_solucan_index_url
    assert_response :success
  end

end
