class Utilisateur < ApplicationRecord
  has_many :annonces

  validates :nom_utilisateur, :email, presence: true
  validates :email, uniqueness: true
end
# Compare this snippet from app/models/utilisateur.rb:
