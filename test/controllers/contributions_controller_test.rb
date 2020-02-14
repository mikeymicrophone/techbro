require 'test_helper'

class ContributionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @contribution = contributions(:one)
  end

  test "should get index" do
    get contributions_url
    assert_response :success
  end

  test "should get new" do
    get new_contribution_url
    assert_response :success
  end

  test "should create contribution" do
    assert_difference('Contribution.count') do
      post contributions_url, params: { contribution: { benefactor_id: @contribution.benefactor_id, expression: @contribution.expression } }
    end

    assert_redirected_to contribution_url(Contribution.last)
  end

  test "should show contribution" do
    get contribution_url(@contribution)
    assert_response :success
  end

  test "should get edit" do
    get edit_contribution_url(@contribution)
    assert_response :success
  end

  test "should update contribution" do
    patch contribution_url(@contribution), params: { contribution: { benefactor_id: @contribution.benefactor_id, expression: @contribution.expression } }
    assert_redirected_to contribution_url(@contribution)
  end

  test "should destroy contribution" do
    assert_difference('Contribution.count', -1) do
      delete contribution_url(@contribution)
    end

    assert_redirected_to contributions_url
  end
end
