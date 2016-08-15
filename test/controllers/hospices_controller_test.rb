require 'test_helper'

class HospicesControllerTest < ActionController::TestCase
  setup do
    @hospice = hospices(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:hospices)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create hospice" do
    assert_difference('Hospice.count') do
      post :create, hospice: { name: @hospice.name, passcode: @hospice.passcode, username: @hospice.username }
    end

    assert_redirected_to hospice_path(assigns(:hospice))
  end

  test "should show hospice" do
    get :show, id: @hospice
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @hospice
    assert_response :success
  end

  test "should update hospice" do
    patch :update, id: @hospice, hospice: { name: @hospice.name, passcode: @hospice.passcode, username: @hospice.username }
    assert_redirected_to hospice_path(assigns(:hospice))
  end

  test "should destroy hospice" do
    assert_difference('Hospice.count', -1) do
      delete :destroy, id: @hospice
    end

    assert_redirected_to hospices_path
  end
end
