class ChangeDefaultValueConfirmedBookings < ActiveRecord::Migration[5.1]
  def change
    change_column_default :bookings, :confirmed, nil
  end
end
