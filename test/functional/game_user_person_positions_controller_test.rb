require 'test_helper'

class GameUserPersonPositionsControllerTest < ActionController::TestCase
  setup do
    @game_user_person_position = game_user_person_positions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:game_user_person_positions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create game_user_person_position" do
    assert_difference('GameUserPersonPosition.count') do
      post :create, :game_user_person_position => @game_user_person_position.attributes
    end

    assert_redirected_to game_user_person_position_path(assigns(:game_user_person_position))
  end

  test "should show game_user_person_position" do
    get :show, :id => @game_user_person_position.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @game_user_person_position.to_param
    assert_response :success
  end

  test "should update game_user_person_position" do
    put :update, :id => @game_user_person_position.to_param, :game_user_person_position => @game_user_person_position.attributes
    assert_redirected_to game_user_person_position_path(assigns(:game_user_person_position))
  end

  test "should destroy game_user_person_position" do
    assert_difference('GameUserPersonPosition.count', -1) do
      delete :destroy, :id => @game_user_person_position.to_param
    end

    assert_redirected_to game_user_person_positions_path
  end
end
