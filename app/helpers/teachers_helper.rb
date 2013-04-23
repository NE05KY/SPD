module TeachersHelper
	def full_name(teacher) 
		[teacher.sname, teacher.fname, teacher.lname ].join(' ')
	end
end
