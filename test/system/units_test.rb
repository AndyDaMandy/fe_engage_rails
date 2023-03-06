require "application_system_test_case"

class UnitsTest < ApplicationSystemTestCase
  setup do
    @unit = units(:one)
  end

  test "visiting the index" do
    visit units_url
    assert_selector "h1", text: "Units"
  end

  test "should create unit" do
    visit units_url
    click_on "New unit"

    fill_in "B bld", with: @unit.b_bld
    fill_in "B def", with: @unit.b_def
    fill_in "B dex", with: @unit.b_dex
    fill_in "B hp", with: @unit.b_hp
    fill_in "B lck", with: @unit.b_lck
    fill_in "B lvl", with: @unit.b_lvl
    fill_in "B mag", with: @unit.b_mag
    fill_in "B mov", with: @unit.b_mov
    fill_in "B res", with: @unit.b_res
    fill_in "B spd", with: @unit.b_spd
    fill_in "B str", with: @unit.b_str
    fill_in "Char name", with: @unit.char_name
    fill_in "G bld", with: @unit.g_bld
    fill_in "G def", with: @unit.g_def
    fill_in "G dex", with: @unit.g_dex
    fill_in "G hp", with: @unit.g_hp
    fill_in "G lck", with: @unit.g_lck
    fill_in "G mag", with: @unit.g_mag
    fill_in "G res", with: @unit.g_res
    fill_in "G spd", with: @unit.g_spd
    fill_in "G str", with: @unit.g_str
    click_on "Create Unit"

    assert_text "Unit was successfully created"
    click_on "Back"
  end

  test "should update Unit" do
    visit unit_url(@unit)
    click_on "Edit this unit", match: :first

    fill_in "B bld", with: @unit.b_bld
    fill_in "B def", with: @unit.b_def
    fill_in "B dex", with: @unit.b_dex
    fill_in "B hp", with: @unit.b_hp
    fill_in "B lck", with: @unit.b_lck
    fill_in "B lvl", with: @unit.b_lvl
    fill_in "B mag", with: @unit.b_mag
    fill_in "B mov", with: @unit.b_mov
    fill_in "B res", with: @unit.b_res
    fill_in "B spd", with: @unit.b_spd
    fill_in "B str", with: @unit.b_str
    fill_in "Char name", with: @unit.char_name
    fill_in "G bld", with: @unit.g_bld
    fill_in "G def", with: @unit.g_def
    fill_in "G dex", with: @unit.g_dex
    fill_in "G hp", with: @unit.g_hp
    fill_in "G lck", with: @unit.g_lck
    fill_in "G mag", with: @unit.g_mag
    fill_in "G res", with: @unit.g_res
    fill_in "G spd", with: @unit.g_spd
    fill_in "G str", with: @unit.g_str
    click_on "Update Unit"

    assert_text "Unit was successfully updated"
    click_on "Back"
  end

  test "should destroy Unit" do
    visit unit_url(@unit)
    click_on "Destroy this unit", match: :first

    assert_text "Unit was successfully destroyed"
  end
end
