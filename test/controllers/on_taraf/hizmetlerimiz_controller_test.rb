require 'test_helper'

class OnTaraf::HizmetlerimizControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get on_taraf_hizmetlerimiz_index_url
    assert_response :success
  end

end
