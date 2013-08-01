require_relative '../../db/config'

class Teacher < ActiveRecord::Base
  validates :email, uniqueness: true

  attr_accessor :first_name, :last_name, :email, :phone
  
  def initialize(args)
   self.first_name = args[:first_name] 
   self.last_name = args[:last_name]
   self.email = args[:email]
   self.phone = args[:phone]
  end
end
