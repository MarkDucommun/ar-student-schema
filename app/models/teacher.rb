require_relative '../../db/config'

class Teacher < ActiveRecord::Base

  attr_accessor :first_name, :last_name, :email, :phone
  
  def initialize(args)
end
