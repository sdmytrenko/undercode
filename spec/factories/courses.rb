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

FactoryGirl.define do
  factory :course do
    name "MyString"
    season 1
    description "MyText"
    start_time "2017-01-04 22:26:40"
  end
end
