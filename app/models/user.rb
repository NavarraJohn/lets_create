# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  first_name :string
#  last_name  :string
#  email      :string
#  password   :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class User < ApplicationRecord
  has_secure_password
  has_many :projects

  has_many :follower_users, foreign_key: "user_id", class_name: "Follower"
  has_many :users, through: :follower_users, source: :follower

  has_many :follower_followers, foreign_key: "follower_id", class_name: "Follower"
  has_many :followers, through: :follower_followers, source: :user

  has_many :favorite_projects
  has_many :favorites, through: :favorite_projects, class_name: "Project"



end
