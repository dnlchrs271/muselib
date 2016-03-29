require 'test_helper'

class GenresControllerTest < ActionController::TestCase
  setup do
    @genrgenre = genrgenres(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:genrgenres)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create genrgenre" do
    assert_difference('Genrgenre.count') do
      post :create, genrgenre: { title: @genrgenre.title }
    end

    assert_redirected_to genrgenre_path(assigns(:genrgenre))
  end

  test "should show genrgenre" do
    get :show, id: @genrgenre
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @genrgenre
    assert_response :success
  end

  test "should update genrgenre" do
    patch :update, id: @genrgenre, genrgenre: { title: @genrgenre.title }
    assert_redirected_to genrgenre_path(assigns(:genrgenre))
  end

  test "should destroy genrgenre" do
    assert_difference('Genrgenre.count', -1) do
      delete :destroy, id: @genrgenre
    end

    assert_redirected_to genrgenres_path
  end
end
