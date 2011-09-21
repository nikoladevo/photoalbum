require 'test_helper'

class GameUserPersonPosControllerTest < ActionController::TestCase
  setup do
    @game_user_person_po = game_user_person_pos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:game_user_person_pos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create game_user_person_po" do
    assert_difference('GameUserPersonPo.count') do
      post :create, :game_user_person_po => @game_user_person_po.attributes
    end

    assert_redirected_to game_user_person_po_path(assigns(:game_user_person_po))
  end

  test "should show game_user_person_po" do
    get :show, :id => @game_user_person_po.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @game_user_person_po.to_param
    assert_response :success
  end

  test "should update game_user_person_po" do
    put :update, :id => @game_user_person_po.to_param, :game_user_person_po => @game_user_person_po.attributes
    assert_redirected_to game_user_person_po_path(assigns(:game_user_person_po))
  end

  test "should destroy game_user_person_po" do
    assert_difference('GameUserPersonPo.count', -1) do
      delete :destroy, :id => @game_user_person_po.to_param
    end

    assert_redirected_to game_user_person_pos_path
  end
end
