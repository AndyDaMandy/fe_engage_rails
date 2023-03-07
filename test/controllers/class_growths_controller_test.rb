require "test_helper"

class ClassGrowthsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @class_growth = class_growths(:one)
  end

  test "should get index" do
    get class_growths_url
    assert_response :success
  end

  test "should get new" do
    get new_class_growth_url
    assert_response :success
  end

  test "should create class_growth" do
    assert_difference("ClassGrowth.count") do
      post class_growths_url, params: { class_growth: { bld: @class_growth.bld, class_name: @class_growth.class_name, class_rank: @class_growth.class_rank, def: @class_growth.def, dex: @class_growth.dex, hp: @class_growth.hp, lck: @class_growth.lck, mag: @class_growth.mag, res: @class_growth.res, spd: @class_growth.spd, str: @class_growth.str } }
    end

    assert_redirected_to class_growth_url(ClassGrowth.last)
  end

  test "should show class_growth" do
    get class_growth_url(@class_growth)
    assert_response :success
  end

  test "should get edit" do
    get edit_class_growth_url(@class_growth)
    assert_response :success
  end

  test "should update class_growth" do
    patch class_growth_url(@class_growth), params: { class_growth: { bld: @class_growth.bld, class_name: @class_growth.class_name, class_rank: @class_growth.class_rank, def: @class_growth.def, dex: @class_growth.dex, hp: @class_growth.hp, lck: @class_growth.lck, mag: @class_growth.mag, res: @class_growth.res, spd: @class_growth.spd, str: @class_growth.str } }
    assert_redirected_to class_growth_url(@class_growth)
  end

  test "should destroy class_growth" do
    assert_difference("ClassGrowth.count", -1) do
      delete class_growth_url(@class_growth)
    end

    assert_redirected_to class_growths_url
  end
end
