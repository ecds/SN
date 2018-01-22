require 'test_helper'

class ArgonauticaPeopleControllerTest < ActionController::TestCase
  setup do
    @argonautica_person = argonautica_people(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:argonautica_people)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create argonautica_person" do
    assert_difference('ArgonauticaPerson.count') do
      post :create, argonautica_person: { : @argonautica_person., name: @argonautica_person.name, origin_id: @argonautica_person.origin_id, tribe: @argonautica_person.tribe }
    end

    assert_redirected_to argonautica_person_path(assigns(:argonautica_person))
  end

  test "should show argonautica_person" do
    get :show, id: @argonautica_person
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @argonautica_person
    assert_response :success
  end

  test "should update argonautica_person" do
    patch :update, id: @argonautica_person, argonautica_person: { : @argonautica_person., name: @argonautica_person.name, origin_id: @argonautica_person.origin_id, tribe: @argonautica_person.tribe }
    assert_redirected_to argonautica_person_path(assigns(:argonautica_person))
  end

  test "should destroy argonautica_person" do
    assert_difference('ArgonauticaPerson.count', -1) do
      delete :destroy, id: @argonautica_person
    end

    assert_redirected_to argonautica_people_path
  end
end
