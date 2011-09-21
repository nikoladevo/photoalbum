require 'test_helper'

class GamePersonIdsControllerTest < ActionController::TestCase
  setup do
    @game_person_id = game_person_ids(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:game_person_ids)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create game_person_id" do
    assert_difference('GamePersonId.count') do
      post :create, :game_person_id => @game_person_id.attributes
    end

    assert_redirected_to game_person_id_path(assigns(:game_person_id))
  end

  test "should show game_person_id" do
    get :show, :id => @game_person_id.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @game_person_id.to_param
    assert_response :success
  end

  test "should update game_person_id" do
    put :update, :id => @game_person_id.to_param, :game_person_id => @game_person_id.attributes
    assert_redirected_to game_person_id_path(assigns(:game_person_id))
  end

  test "should destroy game_person_id" do
    assert_difference('GamePersonId.count', -1) do
      delete :destroy, :id => @game_person_id.to_param
    end

    assert_redirected_to game_person_ids_path
  end
end
