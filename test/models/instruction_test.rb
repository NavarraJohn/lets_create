# == Schema Information
#
# Table name: instructions
#
#  id          :integer          not null, primary key
#  project_id  :integer
#  description :string
#  step_number :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'test_helper'

class InstructionTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
