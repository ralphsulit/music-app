class Album < ApplicationRecord
  validates :name, :kind, presence: true
end
