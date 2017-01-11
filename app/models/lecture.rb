# == Schema Information
#
# Table name: lectures
#
#  id          :integer          not null, primary key
#  course_id   :integer
#  name        :string
#  plain       :text
#  hometask    :text
#  litterature :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
# Indexes
#
#  index_lectures_on_course_id  (course_id)
#

class Lecture < ApplicationRecord
  belongs_to :course
end
