class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :profile
  #validates  :start_time, :end_time, presence: true
  #validates :required, inclusion: [true, false]
end
