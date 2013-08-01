require_relative '../app/models/teacher'
require_relative '../app/models/student'
require_relative '../app/models/section'

class PrintRelations
  
  def self.print
    Teacher.order(:first_name).all.each do |teacher|
      puts "Students of #{teacher}"
      valid_student_id = []
      Section.all.each do |section| 
        valid_student_id << section[:student_id] if teacher[:id] == section[:teacher_id]
      end
      students = valid_student_id.map { |id| Student.find(id) }
      puts students
      puts
    end

    puts "\n\n\n"

    Student.order(:first_name).all.each do |student|
      puts "Teachers of #{student}"
      valid_teacher_id = []
      Section.all.each do |section| 
        valid_teacher_id << section[:teacher_id] if student[:id] == section[:student_id]
      end
      teachers = valid_teacher_id.map { |id| Teacher.find(id) }
      puts teachers
      puts
    end
  end  
end