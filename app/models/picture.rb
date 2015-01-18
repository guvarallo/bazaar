# == Schema Information
#
# Table name: pictures
#
#  id         :integer          not null, primary key
#  ad_id      :integer
#  created_at :datetime
#  updated_at :datetime
#  avatar     :string(255)
#

class Picture < ActiveRecord::Base
  mount_uploader :avatar, AvatarUploader

  belongs_to :ad

  validates  :ad, presence: true
end
