require 'test_helper'

class PlacesReferencedsControllerTest < ActionController::TestCase
  setup do
    @places_referenced = places_referenceds(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:places_referenceds)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create places_referenced" do
    assert_difference('PlacesReferenced.count') do
      post :create, places_referenced: { line_number: @places_referenced.line_number, ritual: @places_referenced.ritual, ritual_deity: @places_referenced.ritual_deity, type_of_reference: @places_referenced.type_of_reference }
    end

    assert_redirected_to places_referenced_path(assigns(:places_referenced))
  end

  test "should show places_referenced" do
    get :show, id: @places_referenced
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @places_referenced
    assert_response :success
  end

  test "should update places_referenced" do
    patch :update, id: @places_referenced, places_referenced: { line_number: @places_referenced.line_number, ritual: @places_referenced.ritual, ritual_deity: @places_referenced.ritual_deity, type_of_reference: @places_referenced.type_of_reference }
    assert_redirected_to places_referenced_path(assigns(:places_referenced))
  end

  test "should destroy places_referenced" do
    assert_difference('PlacesReferenced.count', -1) do
      delete :destroy, id: @places_referenced
    end

    assert_redirected_to places_referenceds_path
  end
end
