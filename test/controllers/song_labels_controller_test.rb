require 'test_helper'

class SongLabelsControllerTest < ActionController::TestCase
  setup do
    @song_label = song_labels(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:song_labels)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create song_label" do
    assert_difference('SongLabel.count') do
      post :create, song_label: { title: @song_label.title }
    end

    assert_redirected_to song_label_path(assigns(:song_label))
  end

  test "should show song_label" do
    get :show, id: @song_label
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @song_label
    assert_response :success
  end

  test "should update song_label" do
    patch :update, id: @song_label, song_label: { title: @song_label.title }
    assert_redirected_to song_label_path(assigns(:song_label))
  end

  test "should destroy song_label" do
    assert_difference('SongLabel.count', -1) do
      delete :destroy, id: @song_label
    end

    assert_redirected_to song_labels_path
  end
end
