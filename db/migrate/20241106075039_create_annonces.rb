class CreateAnnonces < ActiveRecord::Migration[6.1]
  def change
    create_table :annonces do |t|
      t.references :utilisateur, foreign_key: true # Référence à l'utilisateur
      t.references :equipement, foreign_key: true # Référence à l'équipement
      t.string :etat, null: false
      t.decimal :prix, precision: 10, scale: 2 # Prix avec 2 décimales
      t.text :description
      t.datetime :date_publication, null: false, default: -> { 'CURRENT_TIMESTAMP' }

      t.timestamps
    end
  end
end
