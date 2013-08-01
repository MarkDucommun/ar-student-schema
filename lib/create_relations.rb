require_relative '../app/models/teacher'
require_relative '../app/models/student'
require_relative '../app/models/section'

class CreateRelations
  def self.create
    Student.all.each do |student|
      teacher_assignments = (1..9).to_a.sample(4)
      teacher_assignments.each do |teacher|
        Section.create({ student_id: student[:id], teacher_id: teacher })
      end
    end
  end
end
