require_relative '../app/models/teacher'
require_relative '../app/models/student'

assignment_array = ((1..9).to_a * 6).sample(54)

Student.all.each_with_index do |student, index|
  student[:teacher_id] = assignment_array[index]
  student.save
end
