class Course < ApplicationRecord
  validates :name, presence: true, length: { minimum: 5, maximum: 100 }
  validates :short_name, presence: true, length: { minimum: 5, maximum: 50 }
  validates :description, presence: true, length: { minimum: 20, maximum: 200 }
  has_many :student_courses
  has_many :students, through: :student_courses
end
