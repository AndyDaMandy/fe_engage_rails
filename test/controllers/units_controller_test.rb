require "test_helper"

class UnitsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @unit = units(:one)
  end

  test "should get index" do
    get units_url
    assert_response :success
  end

  test "should get new" do
    get new_unit_url
    assert_response :success
  end

  test "should create unit" do
    assert_difference("Unit.count") do
      post units_url, params: { unit: { b_bld: @unit.b_bld, b_def: @unit.b_def, b_dex: @unit.b_dex, b_hp: @unit.b_hp, b_lck: @unit.b_lck, b_lvl: @unit.b_lvl, b_mag: @unit.b_mag, b_mov: @unit.b_mov, b_res: @unit.b_res, b_spd: @unit.b_spd, b_str: @unit.b_str, char_name: @unit.char_name, g_bld: @unit.g_bld, g_def: @unit.g_def, g_dex: @unit.g_dex, g_hp: @unit.g_hp, g_lck: @unit.g_lck, g_mag: @unit.g_mag, g_res: @unit.g_res, g_spd: @unit.g_spd, g_str: @unit.g_str } }
    end

    assert_redirected_to unit_url(Unit.last)
  end

  test "should show unit" do
    get unit_url(@unit)
    assert_response :success
  end

  test "should get edit" do
    get edit_unit_url(@unit)
    assert_response :success
  end

  test "should update unit" do
    patch unit_url(@unit), params: { unit: { b_bld: @unit.b_bld, b_def: @unit.b_def, b_dex: @unit.b_dex, b_hp: @unit.b_hp, b_lck: @unit.b_lck, b_lvl: @unit.b_lvl, b_mag: @unit.b_mag, b_mov: @unit.b_mov, b_res: @unit.b_res, b_spd: @unit.b_spd, b_str: @unit.b_str, char_name: @unit.char_name, g_bld: @unit.g_bld, g_def: @unit.g_def, g_dex: @unit.g_dex, g_hp: @unit.g_hp, g_lck: @unit.g_lck, g_mag: @unit.g_mag, g_res: @unit.g_res, g_spd: @unit.g_spd, g_str: @unit.g_str } }
    assert_redirected_to unit_url(@unit)
  end

  test "should destroy unit" do
    assert_difference("Unit.count", -1) do
      delete unit_url(@unit)
    end

    assert_redirected_to units_url
  end
end
