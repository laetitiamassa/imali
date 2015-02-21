require 'test_helper'

class MattersControllerTest < ActionController::TestCase
  setup do
    @matter = matters(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:matters)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create matter" do
    assert_difference('Matter.count') do
      post :create, matter: { client_id: @matter.client_id, closing_date: @matter.closing_date, description: @matter.description, jurisdiction: @matter.jurisdiction, matter_value: @matter.matter_value, opening_date: @matter.opening_date, stage: @matter.stage }
    end

    assert_redirected_to matter_path(assigns(:matter))
  end

  test "should show matter" do
    get :show, id: @matter
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @matter
    assert_response :success
  end

  test "should update matter" do
    patch :update, id: @matter, matter: { client_id: @matter.client_id, closing_date: @matter.closing_date, description: @matter.description, jurisdiction: @matter.jurisdiction, matter_value: @matter.matter_value, opening_date: @matter.opening_date, stage: @matter.stage }
    assert_redirected_to matter_path(assigns(:matter))
  end

  test "should destroy matter" do
    assert_difference('Matter.count', -1) do
      delete :destroy, id: @matter
    end

    assert_redirected_to matters_path
  end
end
