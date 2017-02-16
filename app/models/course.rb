# == Schema Information
#
# Table name: courses
#
#  id          :integer          not null, primary key
#  name        :string
#  season      :integer
#  description :text
#  start_date  :datetime
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  image       :string
#

class Course < ApplicationRecord

  mount_uploader :image, ImageUploader

  has_many :lectures
  has_many :projects
end
