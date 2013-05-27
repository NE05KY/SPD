# == Schema Information
#
# Table name: admins
#
#  id              :integer          not null, primary key
#  name            :string(255)
#  password_digest :string(255)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  last_visit      :datetime
#

class Admin < ActiveRecord::Base
  attr_accessible :name, :password, :password_confirmation, :last_visit
  has_secure_password
  validates :name, presence: true, uniqueness: true, :format => { with: /^[a-zA-Z]+$/ }
  validates :password, length: { in: 4..20 }
end
