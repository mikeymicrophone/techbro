require 'test_helper'

class BenefactorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @benefactor = benefactors(:one)
  end

  test "should get index" do
    get benefactors_url
    assert_response :success
  end

  test "should get new" do
    get new_benefactor_url
    assert_response :success
  end

  test "should create benefactor" do
    assert_difference('Benefactor.count') do
      post benefactors_url, params: { benefactor: { moniker: @benefactor.moniker } }
    end

    assert_redirected_to benefactor_url(Benefactor.last)
  end

  test "should show benefactor" do
    get benefactor_url(@benefactor)
    assert_response :success
  end

  test "should get edit" do
    get edit_benefactor_url(@benefactor)
    assert_response :success
  end

  test "should update benefactor" do
    patch benefactor_url(@benefactor), params: { benefactor: { moniker: @benefactor.moniker } }
    assert_redirected_to benefactor_url(@benefactor)
  end

  test "should destroy benefactor" do
    assert_difference('Benefactor.count', -1) do
      delete benefactor_url(@benefactor)
    end

    assert_redirected_to benefactors_url
  end
end
