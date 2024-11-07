class Fabricant < ApplicationRecord
  has_many :equipements

  validates :nom_fabricant, presence: true
end
