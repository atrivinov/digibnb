class Service < ApplicationRecord
  has_many :bookings
  belongs_to :user
  has_one_attached :photo

  before_save :set_defaults

  private

  def set_defaults
    self.available = true
  end
end
