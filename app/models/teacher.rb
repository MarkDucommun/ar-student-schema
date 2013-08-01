require_relative '../../db/config'

class Teacher < ActiveRecord::Base
  # validates :email, uniqueness: true

  def to_s
    "#{first_name} #{last_name}"
  end
end
