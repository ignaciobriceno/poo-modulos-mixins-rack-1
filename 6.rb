module Test
	def result
		if ((@nota1 + @nota2)/2) >= 4.0
			puts "estudiante aprobado"
		else
			puts "estudiante reprobado"
		end
	end
end

module Attendance
	@@quantity = 0
	def student_quantity
		@@quantity
	end
end


class Student
	include Test
	extend Attendance
	@@quantity = 0
	def initialize(nombre, nota1 = 4, nota2 = 4)
		@nombre = nombre
		@nota1 = nota1
		@nota2 = nota2
		@@quantity += 1
	end
end

10.times do 
	Student.new('Guille').result
end

puts Student.student_quantity


