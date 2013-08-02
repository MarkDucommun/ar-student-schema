require_relative '../../db/config'

class Section < ActiveRecord::Base
  belongs_to :teacher
  belongs_to :student
end