require_relative '../../db/config'

class Teacher < ActiveRecord::Base
  # validates :email, uniqueness: true

  has_many :sections
  has_many :students, through: :sections

  def to_s
    "#{first_name} #{last_name}"
  end
end
