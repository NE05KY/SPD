class Admin < ActiveRecord::Base
  attr_accessible :name, :password, :password_confirmation, :last_visit
  validates :name, presence: true, uniqueness: true
  has_secure_password
end
