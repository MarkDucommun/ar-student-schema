require_relative '../config'

class CreateTeachers < ActiveRecord::Migration
  def change
    # HINT: checkout ActiveRecord::Migration.create_table
    create_table :teachers do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :phone
    end

    add_column :students, :integer, :teacher_id
  end
end
