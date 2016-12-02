class Annonce < ApplicationRecord

  belongs_to :user
  belongs_to :categorie

  mount_uploader :image, ImageUploader

  def self.getAnnoncesByUser id
    tableau = Annonce.where(user_id: id)
    return tableau
  end
end
