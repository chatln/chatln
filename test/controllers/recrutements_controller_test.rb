require 'test_helper'

class RecrutementsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @recrutement = recrutements(:one)
  end

  test "should get index" do
    get recrutements_url
    assert_response :success
  end

  test "should get new" do
    get new_recrutement_url
    assert_response :success
  end

  test "should create recrutement" do
    assert_difference('Recrutement.count') do
      post recrutements_url, params: { recrutement: { city: @recrutement.city, content: @recrutement.content, role: @recrutement.role, status: @recrutement.status, title: @recrutement.title } }
    end

    assert_redirected_to recrutement_url(Recrutement.last)
  end

  test "should show recrutement" do
    get recrutement_url(@recrutement)
    assert_response :success
  end

  test "should get edit" do
    get edit_recrutement_url(@recrutement)
    assert_response :success
  end

  test "should update recrutement" do
    patch recrutement_url(@recrutement), params: { recrutement: { city: @recrutement.city, content: @recrutement.content, role: @recrutement.role, status: @recrutement.status, title: @recrutement.title } }
    assert_redirected_to recrutement_url(@recrutement)
  end

  test "should destroy recrutement" do
    assert_difference('Recrutement.count', -1) do
      delete recrutement_url(@recrutement)
    end

    assert_redirected_to recrutements_url
  end
end
