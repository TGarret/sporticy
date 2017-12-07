class Activity < ApplicationRecord
  belongs_to :user
  has_many :photos

  validates :activity_type, presence: true
  validates :siren, presence: true, length: {maximum: 9}
  validates :address, presence: true

end
