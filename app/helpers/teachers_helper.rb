module TeachersHelper
	def full_name(teacher) 
		if teacher.description
			content_tag :h2, [teacher.sname, teacher.fname, teacher.lname ].join(' '), class: 'havebio'
		else
			content_tag :h2, [teacher.sname, teacher.fname, teacher.lname ].join(' ')
		end
	end

	def name(teacher) 
		[teacher.sname, teacher.fname].join(' ')
	end
end
