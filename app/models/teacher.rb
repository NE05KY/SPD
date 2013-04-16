class Teacher < ActiveRecord::Base
  attr_accessible :description, :email, :fname, :lname, :position, :rank, :sname
end
