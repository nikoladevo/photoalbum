require 'test_helper'

class GameAnswersControllerTest < ActionController::TestCase
  setup do
    @game_answer = game_answers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:game_answers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create game_answer" do
    assert_difference('GameAnswer.count') do
      post :create, :game_answer => @game_answer.attributes
    end

    assert_redirected_to game_answer_path(assigns(:game_answer))
  end

  test "should show game_answer" do
    get :show, :id => @game_answer.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @game_answer.to_param
    assert_response :success
  end

  test "should update game_answer" do
    put :update, :id => @game_answer.to_param, :game_answer => @game_answer.attributes
    assert_redirected_to game_answer_path(assigns(:game_answer))
  end

  test "should destroy game_answer" do
    assert_difference('GameAnswer.count', -1) do
      delete :destroy, :id => @game_answer.to_param
    end

    assert_redirected_to game_answers_path
  end
end
