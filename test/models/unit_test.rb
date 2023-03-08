# == Schema Information
#
# Table name: units
#
#  id         :bigint           not null, primary key
#  char_name  :string
#  b_lvl      :integer
#  b_hp       :integer
#  b_str      :integer
#  b_mag      :integer
#  b_dex      :integer
#  b_spd      :integer
#  b_def      :integer
#  b_res      :integer
#  b_lck      :integer
#  b_bld      :integer
#  b_mov      :integer
#  g_hp       :integer
#  g_str      :integer
#  g_mag      :integer
#  g_dex      :integer
#  g_spd      :integer
#  g_def      :integer
#  g_res      :integer
#  g_lck      :integer
#  g_bld      :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
require "test_helper"

class UnitTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
