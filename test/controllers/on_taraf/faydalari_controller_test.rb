require 'test_helper'

class OnTaraf::FaydalariControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get on_taraf_faydalari_index_url
    assert_response :success
  end

end
