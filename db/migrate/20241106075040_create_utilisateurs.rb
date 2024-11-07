class CreateUtilisateurs < ActiveRecord::Migration[6.1]
  def change
    create_table :utilisateurs do |t|
      t.string :nom_utilisateur, null: false
      t.string :email, null: false, unique: true
      t.string :adresse

      t.timestamps
    end
  end
end
