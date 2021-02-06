require 'test_helper'

class CommericalUnitsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @commerical_unit = commerical_units(:one)
  end

  test "should get index" do
    get commerical_units_url
    assert_response :success
  end

  test "should get new" do
    get new_commerical_unit_url
    assert_response :success
  end

  test "should create commerical_unit" do
    assert_difference('CommericalUnit.count') do
      post commerical_units_url, params: { commerical_unit: { address: @commerical_unit.address, owner: @commerical_unit.owner, parking: @commerical_unit.parking, price: @commerical_unit.price, shops: @commerical_unit.shops, sqmt: @commerical_unit.sqmt } }
    end

    assert_redirected_to commerical_unit_url(CommericalUnit.last)
  end

  test "should show commerical_unit" do
    get commerical_unit_url(@commerical_unit)
    assert_response :success
  end

  test "should get edit" do
    get edit_commerical_unit_url(@commerical_unit)
    assert_response :success
  end

  test "should update commerical_unit" do
    patch commerical_unit_url(@commerical_unit), params: { commerical_unit: { address: @commerical_unit.address, owner: @commerical_unit.owner, parking: @commerical_unit.parking, price: @commerical_unit.price, shops: @commerical_unit.shops, sqmt: @commerical_unit.sqmt } }
    assert_redirected_to commerical_unit_url(@commerical_unit)
  end

  test "should destroy commerical_unit" do
    assert_difference('CommericalUnit.count', -1) do
      delete commerical_unit_url(@commerical_unit)
    end

    assert_redirected_to commerical_units_url
  end
end
