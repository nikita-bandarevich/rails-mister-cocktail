class Cocktail < ApplicationRecord
  validates :name, presence: true
  validates :rating, presence: true, inclusion: { in: [0, 1, 2, 3, 4, 5] }
  has_many :doses
  mount_uploader :photo, PhotoUploader
end
