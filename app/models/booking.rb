class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :profile
  validates  :start_date, presence: true
  validates :end_date, presence: true
  #validates :required, inclusion: [true, false]
end
