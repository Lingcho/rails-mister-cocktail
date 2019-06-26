class Dose < ApplicationRecord
  belongs_to :ingredient
  belongs_to :cocktail

  validates :cocktail, presence: true
  validates :ingredient, presence: true
  validates :cocktail, uniqueness: { scope: :ingredient }
  mount_uploader :photo, PhotoUploader

end
