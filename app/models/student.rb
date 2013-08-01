require_relative '../../db/config'

class Student < ActiveRecord::Base
  validates_uniqueness_of :email
  validates :email, format: { with: /\w\S+[@]\w+[.]\w{2,}/,
      message: "only allows valid emails" }
  validates_inclusion_of :age, :in => (4..200)
  validates :phone, format: { with: /\(?\d{3}\)?.?\d{3}.?\d{4}\s?x?(\d{1,4})?/,
      message: "only allows valid phone numbers"}

  has_many :sections
  has_many :teachers, through: :sections

  def name
    first_name + " " + last_name
  end

  def age
    now = DateTime.now
    age = now.year - birthday.year
    age -= 1 if(now.yday < birthday.yday)
    age
  end

  def to_s
    "#{first_name} #{last_name}"
  end
end
