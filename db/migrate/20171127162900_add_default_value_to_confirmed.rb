class AddDefaultValueToConfirmed < ActiveRecord::Migration[5.1]
  def change
    change_column_default :bookings, :confirmed, false
  end
end
