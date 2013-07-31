require_relative '../../db/config'

class Student < ActiveRecord::Base
  # validates :email, 
  validates :email, uniqueness: true, format: { with: /\w\S+[@]\w+[.]\w{2,}/,
      message: "only allows valid emails" }
  validates_inclusion_of :age, :in => (4..200).to_a
  validates :phone, format: { with: /\(?\d{3}\)?.?\d{3}.+\d{4}\s?x?(\d{4})?/,
      message: "only allows valid phone numbers"}

  attr_accessor :first_name, :last_name, :birthday, :gender,
                :email, :phone

  def intialize(args = {})
     self.first_name = args[:first_name] 
     self.last_name = args[:last_name]
     self.birthday = args[:birthday]
     self.gender = args[:gender]
     self.email = args[:email]
     self.phone = args[:phone]
  end

  def name
    first_name + " " + last_name
  end

  def age
    now = DateTime.now
    age = now.year - birthday.year
    age -= 1 if(now.yday < birthday.yday)
    age
  end
end
