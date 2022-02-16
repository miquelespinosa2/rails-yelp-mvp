class Review < ApplicationRecord
  belongs_to :restaurant
  validates :content, presence: true, length: { minimum: 1 }
  validates :rating, numericality: { only_integer: true }
  validates :rating, inclusion: { in: (0..5) }
end
