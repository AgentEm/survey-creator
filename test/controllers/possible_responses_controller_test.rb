require 'test_helper'

class PossibleResponsesControllerTest < ActionController::TestCase
  setup do
    @possible_response = possible_responses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:possible_responses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create possible_response" do
    assert_difference('PossibleResponse.count') do
      post :create, possible_response: { colour: @possible_response.colour, icon_id: @possible_response.icon_id, label: @possible_response.label, value: @possible_response.value }
    end

    assert_redirected_to possible_response_path(assigns(:possible_response))
  end

  test "should show possible_response" do
    get :show, id: @possible_response
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @possible_response
    assert_response :success
  end

  test "should update possible_response" do
    patch :update, id: @possible_response, possible_response: { colour: @possible_response.colour, icon_id: @possible_response.icon_id, label: @possible_response.label, value: @possible_response.value }
    assert_redirected_to possible_response_path(assigns(:possible_response))
  end

  test "should destroy possible_response" do
    assert_difference('PossibleResponse.count', -1) do
      delete :destroy, id: @possible_response
    end

    assert_redirected_to possible_responses_path
  end
end
