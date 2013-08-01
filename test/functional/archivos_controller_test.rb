require 'test_helper'

class ArchivosControllerTest < ActionController::TestCase
  setup do
    @archivo = archivos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:archivos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create archivo" do
    assert_difference('Archivo.count') do
      post :create, archivo: { titulo: @archivo.titulo }
    end

    assert_redirected_to archivo_path(assigns(:archivo))
  end

  test "should show archivo" do
    get :show, id: @archivo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @archivo
    assert_response :success
  end

  test "should update archivo" do
    put :update, id: @archivo, archivo: { titulo: @archivo.titulo }
    assert_redirected_to archivo_path(assigns(:archivo))
  end

  test "should destroy archivo" do
    assert_difference('Archivo.count', -1) do
      delete :destroy, id: @archivo
    end

    assert_redirected_to archivos_path
  end
end
