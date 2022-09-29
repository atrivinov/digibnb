class Service < ApplicationRecord
  has_many :bookings
  belongs_to :user
  has_one_attached :photo
end
