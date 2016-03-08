require 'test_helper'

class BrowsegenresControllerTest < ActionController::TestCase
  setup do
    @browsegenre = browsegenres(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:browsegenres)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create browsegenre" do
    assert_difference('Browsegenre.count') do
      post :create, browsegenre: { category: @browsegenre.category, newreleases: @browsegenre.newreleases, search: @browsegenre.search, string: @browsegenre.string, string: @browsegenre.string, string: @browsegenre.string }
    end

    assert_redirected_to browsegenre_path(assigns(:browsegenre))
  end

  test "should show browsegenre" do
    get :show, id: @browsegenre
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @browsegenre
    assert_response :success
  end

  test "should update browsegenre" do
    patch :update, id: @browsegenre, browsegenre: { category: @browsegenre.category, newreleases: @browsegenre.newreleases, search: @browsegenre.search, string: @browsegenre.string, string: @browsegenre.string, string: @browsegenre.string }
    assert_redirected_to browsegenre_path(assigns(:browsegenre))
  end

  test "should destroy browsegenre" do
    assert_difference('Browsegenre.count', -1) do
      delete :destroy, id: @browsegenre
    end

    assert_redirected_to browsegenres_path
  end
end
