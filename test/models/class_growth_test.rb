# == Schema Information
#
# Table name: class_growths
#
#  id         :bigint           not null, primary key
#  class_name :string
#  class_rank :boolean
#  hp         :integer
#  str        :integer
#  mag        :integer
#  dex        :integer
#  spd        :integer
#  def        :integer
#  res        :integer
#  lck        :integer
#  bld        :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
require "test_helper"

class ClassGrowthTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
