# == Schema Information
#
# Table name: posts
#
#  id          :integer          not null, primary key
#  user_id     :integer
#  title       :string
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  image       :string
#

class Post < ApplicationRecord

  mount_uploader :image, ImageUploader

  belongs_to :user
  has_many :comments, dependent: :destroy
end
