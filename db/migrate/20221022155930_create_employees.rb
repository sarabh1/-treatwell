class CreateEmployees < ActiveRecord::Migration[6.1]
  def change
    create_table :employees do |t|
      t.references :service, null: false, foreign_key: true
      t.string :first_name

      t.timestamps
    end
  end
end
