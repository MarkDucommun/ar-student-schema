require_relative '../config'

class CreateSections < ActiveRecord::Migration
  def change
    # HINT: checkout ActiveRecord::Migration.create_table
    create_table :sections do |t|
      t.integer :teacher_id
      t.integer :student_id
    end

    remove_column :students, :teacher_id
  end
end
