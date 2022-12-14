class CreateShops < ActiveRecord::Migration[6.1]
  def change
    create_table :shops do |t|
      t.string :name
      t.string :address
      t.string :telephone
      t.string :email
      t.string :description
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
