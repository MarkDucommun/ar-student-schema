require_relative '../../db/config'

class Section < ActiveRecord::Base
  belongs_to :teachers
  belongs_to :students
end