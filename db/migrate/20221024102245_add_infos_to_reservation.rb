class AddInfosToReservation < ActiveRecord::Migration[6.1]
  def change
    add_column :reservations, :start_date, :datetime
    add_column :reservations, :end_date, :datetime
  end
end
