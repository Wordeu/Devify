class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :email, presence: true
  validates :email, uniqueness: {message: 'An account associated with %{value} already exists'}
  has_many :bookings
  validates :password, length: {in: 5..15}, on: :create
end
