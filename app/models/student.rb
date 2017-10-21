class Student < ApplicationRecord
  has_many :enrollments
  has_many :sections, through: :enrollments

  validates_associated :sections
  
  validates :name, presence: true, length: {maximum: 40, minimum: 4}
  validates :email, uniqueness: true, presence: true, length: {maximum: 50, minimum: 10}, format: /@/
  validates :major, length: {maximum: 35}
  validates :minor, length: {maximum: 40}
  validates :year, presence: true, inclusion: {in: %w(Freshman Sophomore Junior Senior Graduate PhD)}, length: {maximum: 10}
  validates :graduation, length: {maximum: 11, message: "Must be in 'Semester Year' Format"} 
end
