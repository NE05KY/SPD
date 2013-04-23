class Subject < ActiveRecord::Base
  belongs_to :teachers
  attr_accessible :description, :name
end
