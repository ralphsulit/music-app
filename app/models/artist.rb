class Artist < ApplicationRecord
  validates :name, :bio, presence: true
  validates :name, uniqueness: true

  has_one_attached :avatar
  has_one_attached :cover_photo_url
end
