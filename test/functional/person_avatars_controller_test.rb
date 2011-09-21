require 'test_helper'

class PersonAvatarsControllerTest < ActionController::TestCase
  setup do
    @person_avatar = person_avatars(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:person_avatars)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create person_avatar" do
    assert_difference('PersonAvatar.count') do
      post :create, :person_avatar => @person_avatar.attributes
    end

    assert_redirected_to person_avatar_path(assigns(:person_avatar))
  end

  test "should show person_avatar" do
    get :show, :id => @person_avatar.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @person_avatar.to_param
    assert_response :success
  end

  test "should update person_avatar" do
    put :update, :id => @person_avatar.to_param, :person_avatar => @person_avatar.attributes
    assert_redirected_to person_avatar_path(assigns(:person_avatar))
  end

  test "should destroy person_avatar" do
    assert_difference('PersonAvatar.count', -1) do
      delete :destroy, :id => @person_avatar.to_param
    end

    assert_redirected_to person_avatars_path
  end
end
