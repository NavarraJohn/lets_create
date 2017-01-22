# == Schema Information
#
# Table name: projects
#
#  id         :integer          not null, primary key
#  name       :string
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Project < ApplicationRecord

  belongs_to :user
  has_many :instructions
  has_many :projects_categories
  has_many :project_images
  has_many :favorite_projects
  has_many :categories, through: :projects_categories
  has_many :users_who_favorited, through: :favorite_projects, class_name: "User"

end
