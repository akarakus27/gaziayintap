require 'test_helper'

class IletisimControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get iletisim_index_url
    assert_response :success
  end

end
