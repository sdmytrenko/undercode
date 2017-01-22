# == Schema Information
#
# Table name: projects
#
#  id          :integer          not null, primary key
#  course_id   :integer
#  user_id     :integer
#  name        :string
#  repo        :string
#  description :text
#  tasks       :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
# Indexes
#
#  index_projects_on_course_id  (course_id)
#  index_projects_on_user_id    (user_id)
#

require 'rails_helper'

RSpec.describe Project, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
