require "application_system_test_case"

class ClassGrowthsTest < ApplicationSystemTestCase
  setup do
    @class_growth = class_growths(:one)
  end

  test "visiting the index" do
    visit class_growths_url
    assert_selector "h1", text: "Class growths"
  end

  test "should create class growth" do
    visit class_growths_url
    click_on "New class growth"

    fill_in "Bld", with: @class_growth.bld
    fill_in "Class name", with: @class_growth.class_name
    check "Class rank" if @class_growth.class_rank
    fill_in "Def", with: @class_growth.def
    fill_in "Dex", with: @class_growth.dex
    fill_in "Hp", with: @class_growth.hp
    fill_in "Lck", with: @class_growth.lck
    fill_in "Mag", with: @class_growth.mag
    fill_in "Res", with: @class_growth.res
    fill_in "Spd", with: @class_growth.spd
    fill_in "Str", with: @class_growth.str
    click_on "Create Class growth"

    assert_text "Class growth was successfully created"
    click_on "Back"
  end

  test "should update Class growth" do
    visit class_growth_url(@class_growth)
    click_on "Edit this class growth", match: :first

    fill_in "Bld", with: @class_growth.bld
    fill_in "Class name", with: @class_growth.class_name
    check "Class rank" if @class_growth.class_rank
    fill_in "Def", with: @class_growth.def
    fill_in "Dex", with: @class_growth.dex
    fill_in "Hp", with: @class_growth.hp
    fill_in "Lck", with: @class_growth.lck
    fill_in "Mag", with: @class_growth.mag
    fill_in "Res", with: @class_growth.res
    fill_in "Spd", with: @class_growth.spd
    fill_in "Str", with: @class_growth.str
    click_on "Update Class growth"

    assert_text "Class growth was successfully updated"
    click_on "Back"
  end

  test "should destroy Class growth" do
    visit class_growth_url(@class_growth)
    click_on "Destroy this class growth", match: :first

    assert_text "Class growth was successfully destroyed"
  end
end
