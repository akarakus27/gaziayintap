require 'test_helper'

class OnYuz::AnaSayfaControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get on_yuz_ana_sayfa_index_url
    assert_response :success
  end

end
