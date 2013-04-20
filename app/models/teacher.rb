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

class Teacher < ActiveRecord::Base
  attr_accessible :description, :email, :fname, :lname, :position, :rank, :sname
  validates :fname, :lname, :sname, presence: true, length: { in: 2..20 }
  validates :email, :uniqueness => true
end
