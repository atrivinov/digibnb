class Service < ApplicationRecord
  has_many :bookings, dependent: :destroy
  belongs_to :user
  has_one_attached :photo
  validates :description, length: { in: 6..255 }

  before_save :set_defaults

  private

  def set_defaults
    self.available = true
  end

  include PgSearch::Model
  pg_search_scope :search_by_product_name_and_description,
  against: [ :product_name, :description ],
  using: {
    tsearch: { prefix: true } # <-- now `superman batm` will return something!
  }
end
