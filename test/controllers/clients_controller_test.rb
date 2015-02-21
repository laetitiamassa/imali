require 'test_helper'

class ClientsControllerTest < ActionController::TestCase
  setup do
    @client = clients(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:clients)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create client" do
    assert_difference('Client.count') do
      post :create, client: { birth_date: @client.birth_date, birth_place: @client.birth_place, civil_status: @client.civil_status, first_name: @client.first_name, home_city: @client.home_city, home_country: @client.home_country, home_fax: @client.home_fax, home_mobile: @client.home_mobile, home_number: @client.home_number, home_postcode: @client.home_postcode, home_street: @client.home_street, home_tel: @client.home_tel, last_name: @client.last_name, office_city: @client.office_city, office_country: @client.office_country, office_fax: @client.office_fax, office_mobile: @client.office_mobile, office_number: @client.office_number, office_postcode: @client.office_postcode, office_street: @client.office_street, office_tel: @client.office_tel, profession: @client.profession, profession: @client.profession, revenues: @client.revenues }
    end

    assert_redirected_to client_path(assigns(:client))
  end

  test "should show client" do
    get :show, id: @client
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @client
    assert_response :success
  end

  test "should update client" do
    patch :update, id: @client, client: { birth_date: @client.birth_date, birth_place: @client.birth_place, civil_status: @client.civil_status, first_name: @client.first_name, home_city: @client.home_city, home_country: @client.home_country, home_fax: @client.home_fax, home_mobile: @client.home_mobile, home_number: @client.home_number, home_postcode: @client.home_postcode, home_street: @client.home_street, home_tel: @client.home_tel, last_name: @client.last_name, office_city: @client.office_city, office_country: @client.office_country, office_fax: @client.office_fax, office_mobile: @client.office_mobile, office_number: @client.office_number, office_postcode: @client.office_postcode, office_street: @client.office_street, office_tel: @client.office_tel, profession: @client.profession, profession: @client.profession, revenues: @client.revenues }
    assert_redirected_to client_path(assigns(:client))
  end

  test "should destroy client" do
    assert_difference('Client.count', -1) do
      delete :destroy, id: @client
    end

    assert_redirected_to clients_path
  end
end
