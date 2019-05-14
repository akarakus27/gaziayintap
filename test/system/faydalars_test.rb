require "application_system_test_case"

class FaydalarsTest < ApplicationSystemTestCase
  setup do
    @faydalar = faydalars(:one)
  end

  test "visiting the index" do
    visit faydalars_url
    assert_selector "h1", text: "Faydalars"
  end

  test "creating a Faydalar" do
    visit faydalars_url
    click_on "New Faydalar"

    fill_in "Aciklama", with: @faydalar.aciklama
    fill_in "Baslik", with: @faydalar.baslik
    click_on "Create Faydalar"

    assert_text "Faydalar was successfully created"
    click_on "Back"
  end

  test "updating a Faydalar" do
    visit faydalars_url
    click_on "Edit", match: :first

    fill_in "Aciklama", with: @faydalar.aciklama
    fill_in "Baslik", with: @faydalar.baslik
    click_on "Update Faydalar"

    assert_text "Faydalar was successfully updated"
    click_on "Back"
  end

  test "destroying a Faydalar" do
    visit faydalars_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Faydalar was successfully destroyed"
  end
end
