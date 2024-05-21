class Cat < ApplicationRecord
  validates :location, :image_url, presence: true
  validates :legs, inclusion: { in: 0..4 }
end
