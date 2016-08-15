require 'test_helper'

class RequestsControllerTest < ActionController::TestCase
  setup do
    @request = requests(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:requests)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create request" do
    assert_difference('Request.count') do
      post :create, request: { additional_info: @request.additional_info, care_type: @request.care_type, cats: @request.cats, dogs: @request.dogs, duration: @request.duration, iv_therapy: @request.iv_therapy, location: @request.location, nurse_title: @request.nurse_title, patient_gender: @request.patient_gender, smoker: @request.smoker, start_time: @request.start_time, trach_care: @request.trach_care }
    end

    assert_redirected_to request_path(assigns(:request))
  end

  test "should show request" do
    get :show, id: @request
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @request
    assert_response :success
  end

  test "should update request" do
    patch :update, id: @request, request: { additional_info: @request.additional_info, care_type: @request.care_type, cats: @request.cats, dogs: @request.dogs, duration: @request.duration, iv_therapy: @request.iv_therapy, location: @request.location, nurse_title: @request.nurse_title, patient_gender: @request.patient_gender, smoker: @request.smoker, start_time: @request.start_time, trach_care: @request.trach_care }
    assert_redirected_to request_path(assigns(:request))
  end

  test "should destroy request" do
    assert_difference('Request.count', -1) do
      delete :destroy, id: @request
    end

    assert_redirected_to requests_path
  end
end
