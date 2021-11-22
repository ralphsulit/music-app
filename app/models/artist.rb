class Artist < ApplicationRecord
  validates :name, :bio, presence: true
end
