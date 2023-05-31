class Profile < ApplicationRecord
  belongs_to :user
  validates :name, :bio, presence: true
  validates :bio, length: { maximum: 2000 }
  validates :category, presence: true
  validates :day_rate, presence: true, numericality: { greater_than: 0 }
  validates :rating, numericality: { greater_than_or_equal_to: 0, less_than_or_equal_to: 10 }

  has_one_attached :photo
end
