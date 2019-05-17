class Cocktail < ApplicationRecord
  has_many :doses
  has_many :ingredients, through: :doses

  validates :name, uniqueness: true, presence: true
  # validates_uniqueness_of :cocktail_id, scope: :ingredient_id
end
