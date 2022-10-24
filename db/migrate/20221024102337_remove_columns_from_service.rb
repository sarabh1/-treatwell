class RemoveColumnsFromService < ActiveRecord::Migration[6.1]
  def change
    remove_column :services, :start_date, :datetime
    remove_column :services, :end_date, :datetime
  end
end
