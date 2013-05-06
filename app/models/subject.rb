class Subject < ActiveRecord::Base
  has_and_belongs_to_many :teachers
  attr_accessible :description, :name
end
