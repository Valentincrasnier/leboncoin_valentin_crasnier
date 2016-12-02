class CreateAnnonces < ActiveRecord::Migration[5.0]
  def change
    create_table :annonces do |t|
      t.integer :user_id
      t.string :titre
      t.string :description
      t.float :prix
      t.string :image
      t.timestamps
    end
  end
end
