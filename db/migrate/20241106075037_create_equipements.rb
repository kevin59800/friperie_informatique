class CreateEquipements < ActiveRecord::Migration[6.1]
  def change
    create_table :equipements do |t|
      t.string :nom, null: false
      t.string :type, null: false
      t.references :fabricant, foreign_key: true # Référence à la table Fabricant
      t.date :date_production
      t.date :fin_de_production
      t.text :description

      t.timestamps
    end
  end
end
