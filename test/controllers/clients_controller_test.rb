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
      post :create, client: { active_employee?: @client.active_employee?, address_id: @client.address_id, birth_date: @client.birth_date, company_id: @client.company_id, decision_maker: @client.decision_maker, first_name: @client.first_name, home_phone: @client.home_phone, influencer?: @client.influencer?, last_name: @client.last_name, location_id: @client.location_id, mobile_phone: @client.mobile_phone, primary_email: @client.primary_email, secondary_email: @client.secondary_email, ssn: @client.ssn, title: @client.title, work_extention: @client.work_extention, work_phone: @client.work_phone }
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
    patch :update, id: @client, client: { active_employee?: @client.active_employee?, address_id: @client.address_id, birth_date: @client.birth_date, company_id: @client.company_id, decision_maker: @client.decision_maker, first_name: @client.first_name, home_phone: @client.home_phone, influencer?: @client.influencer?, last_name: @client.last_name, location_id: @client.location_id, mobile_phone: @client.mobile_phone, primary_email: @client.primary_email, secondary_email: @client.secondary_email, ssn: @client.ssn, title: @client.title, work_extention: @client.work_extention, work_phone: @client.work_phone }
    assert_redirected_to client_path(assigns(:client))
  end

  test "should destroy client" do
    assert_difference('Client.count', -1) do
      delete :destroy, id: @client
    end

    assert_redirected_to clients_path
  end
end
