class Equipement < ApplicationRecord
  belongs_to :fabricant
  has_many :annonces

  validates :nom, :type, presence: true
end
