require "application_system_test_case"

class CommericalUnitsTest < ApplicationSystemTestCase
  setup do
    @commerical_unit = commerical_units(:one)
  end

  test "visiting the index" do
    visit commerical_units_url
    assert_selector "h1", text: "Commerical Units"
  end

  test "creating a Commerical unit" do
    visit commerical_units_url
    click_on "New Commerical Unit"

    fill_in "Address", with: @commerical_unit.address
    fill_in "Owner", with: @commerical_unit.owner
    fill_in "Parking", with: @commerical_unit.parking
    fill_in "Price", with: @commerical_unit.price
    fill_in "Shops", with: @commerical_unit.shops
    fill_in "Sqmt", with: @commerical_unit.sqmt
    click_on "Create Commerical unit"

    assert_text "Commerical unit was successfully created"
    click_on "Back"
  end

  test "updating a Commerical unit" do
    visit commerical_units_url
    click_on "Edit", match: :first

    fill_in "Address", with: @commerical_unit.address
    fill_in "Owner", with: @commerical_unit.owner
    fill_in "Parking", with: @commerical_unit.parking
    fill_in "Price", with: @commerical_unit.price
    fill_in "Shops", with: @commerical_unit.shops
    fill_in "Sqmt", with: @commerical_unit.sqmt
    click_on "Update Commerical unit"

    assert_text "Commerical unit was successfully updated"
    click_on "Back"
  end

  test "destroying a Commerical unit" do
    visit commerical_units_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Commerical unit was successfully destroyed"
  end
end
