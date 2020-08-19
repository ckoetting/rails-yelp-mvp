class Review < ApplicationRecord
  belongs_to :restaurant
  validates :restaurant, :content, :rating, presence: true
  validates_associated :restaurant
  validates :rating, inclusion: { in: (0..5), allow_nil: false }, numericality: { only_integer: true }
end
