class Annonce < ApplicationRecord
  belongs_to :utilisateur
  belongs_to :equipement

  validates :etat, :prix, presence: true
end
