class Section < ApplicationRecord
  belongs_to :professor
  belongs_to :course
  has_many :enrollments
  has_many :students, through: :enrollments
  
  validates :professor, presence: true
  validates :course, presence: true

  validates_associated :students

  validates :crn, length: {is: 5}, presence: true, uniqueness: true, inclusion: {in: 10000..99999}
  validates :number, length: {maximum: 2}, numericality: {only_integer: true}, presence: true
  validates :room, length: {maximum: 8}

  # Code starting with "format: {with:" from RailsGuide, Bigg et al, 2017
  validates :day, length: {maximum: 5}, presence: true, format: {with: /\A[a-zA-Z]+\z/, message: "only allows letters"} 
  validates :begintime, length: {maximum: 5}, presence: true
  validates :endtime, length: {maximum: 5}, presence: true
end
