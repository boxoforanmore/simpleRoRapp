class Professor < ApplicationRecord
  has_many :sections
  has_many :courses, through: :sections

  validates_associated :courses

  validates :name, length: {in: 4..40}, uniqueness: true, presence: true
  validates :office, length: {maximum: 12}, presence: true
  validates :phone, length: {in: 10..15}, numericality: {only_integer: true}, uniqueness: true
  validates :email, length: {maximum: 35}, presence: true, uniqueness:true, format: /@/
  validates :department, length: {maximum: 3}, presence: true
end
