class Cocktail < ApplicationRecord
  validates :name, presence: true
  has_many :doses
end
