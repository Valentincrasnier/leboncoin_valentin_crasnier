class Annonce < ApplicationRecord

belongs_to :user

  def self.getAnnoncesByUser id
    tableau = Annonce.where(user_id: id)
    return tableau
  end
end
