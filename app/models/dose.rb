class Dose < ApplicationRecord
  belongs_to :cocktail
  belongs_to :ingredient
  validates :amount, presence: :true
  validates_uniqueness_of :cocktail, :scope => [:ingredient]
end
