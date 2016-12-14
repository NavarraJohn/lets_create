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

class ProjectCategory < ApplicationRecord
  
  belongs_to :project
  belongs_to :category

end
