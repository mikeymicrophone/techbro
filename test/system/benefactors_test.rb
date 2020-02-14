require "application_system_test_case"

class BenefactorsTest < ApplicationSystemTestCase
  setup do
    @benefactor = benefactors(:one)
  end

  test "visiting the index" do
    visit benefactors_url
    assert_selector "h1", text: "Benefactors"
  end

  test "creating a Benefactor" do
    visit benefactors_url
    click_on "New Benefactor"

    fill_in "Moniker", with: @benefactor.moniker
    click_on "Create Benefactor"

    assert_text "Benefactor was successfully created"
    click_on "Back"
  end

  test "updating a Benefactor" do
    visit benefactors_url
    click_on "Edit", match: :first

    fill_in "Moniker", with: @benefactor.moniker
    click_on "Update Benefactor"

    assert_text "Benefactor was successfully updated"
    click_on "Back"
  end

  test "destroying a Benefactor" do
    visit benefactors_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Benefactor was successfully destroyed"
  end
end
