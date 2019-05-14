require 'test_helper'

class FaydalarsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @faydalar = faydalars(:one)
  end

  test "should get index" do
    get faydalars_url
    assert_response :success
  end

  test "should get new" do
    get new_faydalar_url
    assert_response :success
  end

  test "should create faydalar" do
    assert_difference('Faydalar.count') do
      post faydalars_url, params: { faydalar: { aciklama: @faydalar.aciklama, baslik: @faydalar.baslik } }
    end

    assert_redirected_to faydalar_url(Faydalar.last)
  end

  test "should show faydalar" do
    get faydalar_url(@faydalar)
    assert_response :success
  end

  test "should get edit" do
    get edit_faydalar_url(@faydalar)
    assert_response :success
  end

  test "should update faydalar" do
    patch faydalar_url(@faydalar), params: { faydalar: { aciklama: @faydalar.aciklama, baslik: @faydalar.baslik } }
    assert_redirected_to faydalar_url(@faydalar)
  end

  test "should destroy faydalar" do
    assert_difference('Faydalar.count', -1) do
      delete faydalar_url(@faydalar)
    end

    assert_redirected_to faydalars_url
  end
end
