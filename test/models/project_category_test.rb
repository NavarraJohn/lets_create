# == Schema Information
#
# Table name: project_categories
#
#  id          :integer          not null, primary key
#  category_id :integer
#  project_id  :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'test_helper'

class ProjectCategoryTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
