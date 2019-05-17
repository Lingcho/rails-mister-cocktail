class Ingredient < ApplicationRecord
  has_many :cocktail, through: :dose

  validates :name, uniqueness: true, presence: true
end
