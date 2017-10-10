class Course < ApplicationRecord
  has_many :sections
  has_many :professors, through: :sections

  validates_associated :professors
  
  validates :name, presence: true, length: {in: 3..70}
  validates :number, presence: true, length: {maximum: 5}
  validates :department, presence: true, length: {maximum: 3}
  validates :credit, presence: true, length: {maximum: 2}
  validates :semester, presence: true, inclusion: {in: %w(Fall Spring Summer)}
  validates :year, presence: true, length: {maximum: 4} 
end
