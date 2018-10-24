require 'test_helper'

class ContaminationLevelsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @contamination_level = contamination_levels(:one)
  end

  test "should get index" do
    get contamination_levels_url
    assert_response :success
  end

  test "should get new" do
    get new_contamination_level_url
    assert_response :success
  end

  test "should create contamination_level" do
    assert_difference('ContaminationLevel.count') do
      post contamination_levels_url, params: { contamination_level: { descripcion: @contamination_level.descripcion, estado: @contamination_level.estado, nombre: @contamination_level.nombre } }
    end

    assert_redirected_to contamination_level_url(ContaminationLevel.last)
  end

  test "should show contamination_level" do
    get contamination_level_url(@contamination_level)
    assert_response :success
  end

  test "should get edit" do
    get edit_contamination_level_url(@contamination_level)
    assert_response :success
  end

  test "should update contamination_level" do
    patch contamination_level_url(@contamination_level), params: { contamination_level: { descripcion: @contamination_level.descripcion, estado: @contamination_level.estado, nombre: @contamination_level.nombre } }
    assert_redirected_to contamination_level_url(@contamination_level)
  end

  test "should destroy contamination_level" do
    assert_difference('ContaminationLevel.count', -1) do
      delete contamination_level_url(@contamination_level)
    end

    assert_redirected_to contamination_levels_url
  end
end
