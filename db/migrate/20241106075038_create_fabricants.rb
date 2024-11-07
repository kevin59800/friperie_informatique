class CreateFabricants < ActiveRecord::Migration[6.1]
  def change
    create_table :fabricants do |t|
      t.string :nom_fabricant, null: false
      t.string :pays_origine

      t.timestamps
    end
  end
end
