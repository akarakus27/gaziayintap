require 'test_helper'

class OnTaraf::AnaSayfaControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get on_taraf_ana_sayfa_index_url
    assert_response :success
  end

end
