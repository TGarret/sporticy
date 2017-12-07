class Activity < ApplicationRecord
  belongs_to :user
  has_many :photos
  has_many :reviews

  validates :activity_type, presence: true
  validates :siren, presence: true, length: {maximum: 9}
  validates :address, presence: true

  def average_rating
    reviews.count == 0 ? 0 : reviews.average(:star).round(2)
  end

end
