class Student < ApplicationRecord
    validates :name, presence: true
    validates :email, presence: true
    validates :student_number, presence: true, uniqueness: { message: "is already is use, please choose a new student number" }
    validates :course, presence: true
  end
  