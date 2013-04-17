# == Schema Information
#
# Table name: teachers
#
#  id          :integer          not null, primary key
#  fname       :string(255)
#  sname       :string(255)
#  lname       :string(255)
#  position    :string(255)
#  rank        :string(255)
#  email       :string(255)
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'test_helper'

class TeacherTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
