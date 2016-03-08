require 'test_helper'

class CurrentsongsControllerTest < ActionController::TestCase
  setup do
    @currentsong = currentsongs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:currentsongs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create currentsong" do
    assert_difference('Currentsong.count') do
      post :create, currentsong: { albumcover: @currentsong.albumcover, float: @currentsong.float, forwardsong: @currentsong.forwardsong, previousong: @currentsong.previousong, repeat: @currentsong.repeat, shuffleplay: @currentsong.shuffleplay, songlength: @currentsong.songlength, string: @currentsong.string, string: @currentsong.string, string: @currentsong.string, title: @currentsong.title }
    end

    assert_redirected_to currentsong_path(assigns(:currentsong))
  end

  test "should show currentsong" do
    get :show, id: @currentsong
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @currentsong
    assert_response :success
  end

  test "should update currentsong" do
    patch :update, id: @currentsong, currentsong: { albumcover: @currentsong.albumcover, float: @currentsong.float, forwardsong: @currentsong.forwardsong, previousong: @currentsong.previousong, repeat: @currentsong.repeat, shuffleplay: @currentsong.shuffleplay, songlength: @currentsong.songlength, string: @currentsong.string, string: @currentsong.string, string: @currentsong.string, title: @currentsong.title }
    assert_redirected_to currentsong_path(assigns(:currentsong))
  end

  test "should destroy currentsong" do
    assert_difference('Currentsong.count', -1) do
      delete :destroy, id: @currentsong
    end

    assert_redirected_to currentsongs_path
  end
end
