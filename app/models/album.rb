class Album < ApplicationRecord
  validates :name, :kind, presence: true

  has_one_attached :avatar
end
