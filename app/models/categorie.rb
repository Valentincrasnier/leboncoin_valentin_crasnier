class Categorie < ApplicationRecord
  validates :nom, presence: true
  has_many :annonce
end
