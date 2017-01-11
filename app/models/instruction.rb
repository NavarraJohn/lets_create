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

class Instruction < ApplicationRecord

  belongs_to :project
  has_many :images


end
