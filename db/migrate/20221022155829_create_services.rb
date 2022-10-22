class CreateServices < ActiveRecord::Migration[6.1]
  def change
    create_table :services do |t|
      t.references :shop, null: false, foreign_key: true
      t.string :title
      t.string :price
      t.string :duration
      t.datetime :start_date
      t.datetime :end_date

      t.timestamps
    end
  end
end
