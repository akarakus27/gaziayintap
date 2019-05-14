require 'test_helper'

class OnTaraf::IletisimControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get on_taraf_iletisim_index_url
    assert_response :success
  end

end
