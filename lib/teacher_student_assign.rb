require_relative '../app/models/teacher'
require_relative '../app/models/student'

assignment_array = ((1..9).to_a * 6).sample(54)

Student.all.each_with_index do |student, index|
  student[:teacher_id] = assignment_array[index]
  student.save
end

9.times do |i|
  puts "Students of Teacher #{Teacher.where('id = ?' ,'i + 1')}"
  puts Student.where('teacher_id = ?', "#{i + 1}")
  puts ""
end