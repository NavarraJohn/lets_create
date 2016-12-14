# == Schema Information
#
# Table name: followers
#
#  id          :integer          not null, primary key
#  user_id     :integer
#  follower_id :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Follower < ApplicationRecord

  belongs_to :user
  belongs_to :follower, foreign_key: "follower_id", class_name: "User"

end
