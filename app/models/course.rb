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
#

class Course < ApplicationRecord
  has_many :lectures
end
