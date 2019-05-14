require 'test_helper'

class OnTaraf::UrunResimleriControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get on_taraf_urun_resimleri_index_url
    assert_response :success
  end

end
